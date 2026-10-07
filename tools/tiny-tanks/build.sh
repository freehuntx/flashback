#!/usr/bin/env bash
# Rebuilds public/games/tiny-tanks/TinyTanksLive.swf from the original SWF:
#  1. compiles the shim classes (shim/) with FFDec's AS3 compiler,
#  2. injects them and retargets NetConnection/NetStream (patch-swf.mjs),
#  3. replaces the TLF text containers with classic-TextField versions (tlf/).
#
# Needs: java + javac, node, and an FFDec (JPEXS) distribution directory that
# contains ffdec.jar, lib/ffdec_lib.jar and flashlib/playerglobal*.swc
# (the official zip/tarball has all three).
#
#   FFDEC_HOME=/opt/ffdec tools/tiny-tanks/build.sh [original.swf]
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$here/../.." && pwd)"
original="${1:-$root/dumps/tiny-tanks/TinyTanksLive.original.swf}"
output="$root/public/games/tiny-tanks/TinyTanksLive.swf"
: "${FFDEC_HOME:?set FFDEC_HOME to an FFDec distribution directory (with ffdec.jar, lib/, flashlib/)}"

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

classpath="$FFDEC_HOME/ffdec.jar:$FFDEC_HOME/lib/*"
javac -cp "$classpath" -d "$work" "$here/CompileAbc.java"
# Any AS3 SWF works as compile context; use the original itself.
java -cp "$classpath:$work" CompileAbc "$original" "$work/shim.abc" \
  "$here/shim/flashnet/rtmfp/NetStream.as" \
  "$here/shim/flashnet/rtmfp/NetConnection.as" \
  "$here/shim/flashnet/patch/FallbackTextField.as"
node "$here/patch-swf.mjs" "$original" "$work/shim.abc" "$work/rtmfp.swf"

# Ruffle's text engine can't re-compose TLF text fields; swap their
# containers for TextField-based ones. Files are named after the obfuscated
# class; FFDec addresses invalid identifiers as §name§.
replace_args=()
for script in "$here"/tlf/*.as; do
  name="$(basename "$script" .as)"
  [[ "$name" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]] || name="§${name}§"
  replace_args+=("$name" "$script")
done
rm -f "$output"
java -jar "$FFDEC_HOME/ffdec.jar" -config autoDeobfuscate=0,autoDeobfuscateIdentifiers=0 \
  -replace "$work/rtmfp.swf" "$output" "${replace_args[@]}"
[[ -s "$output" ]] || { echo "FFDec did not write $output" >&2; exit 1; }
echo "wrote $output"
