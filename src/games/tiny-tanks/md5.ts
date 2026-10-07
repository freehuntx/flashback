/** MD5 of a UTF-8 string as lowercase hex (matches the game's com.adobe MD5.hash). */
export function md5(input: string): string {
  const bytes = new TextEncoder().encode(input);
  const words = new Uint32Array((((bytes.length + 8) >> 6) + 1) * 16);
  for (let i = 0; i < bytes.length; i++) words[i >> 2]! |= bytes[i]! << ((i % 4) * 8);
  words[bytes.length >> 2]! |= 0x80 << ((bytes.length % 4) * 8);
  const bitLength = bytes.length * 8;
  words[words.length - 2] = bitLength >>> 0;
  words[words.length - 1] = Math.floor(bitLength / 0x100000000);

  let a = 0x67452301;
  let b = 0xefcdab89;
  let c = 0x98badcfe;
  let d = 0x10325476;
  for (let block = 0; block < words.length; block += 16) {
    const [aa, bb, cc, dd] = [a, b, c, d];
    for (let i = 0; i < 64; i++) {
      let f: number;
      let g: number;
      if (i < 16) {
        f = (b & c) | (~b & d);
        g = i;
      } else if (i < 32) {
        f = (d & b) | (~d & c);
        g = (5 * i + 1) % 16;
      } else if (i < 48) {
        f = b ^ c ^ d;
        g = (3 * i + 5) % 16;
      } else {
        f = c ^ (b | ~d);
        g = (7 * i) % 16;
      }
      const sum = (a + f + K[i]! + words[block + g]!) | 0;
      a = d;
      d = c;
      c = b;
      b = (b + ((sum << S[i]!) | (sum >>> (32 - S[i]!)))) | 0;
    }
    a = (a + aa) | 0;
    b = (b + bb) | 0;
    c = (c + cc) | 0;
    d = (d + dd) | 0;
  }
  return [a, b, c, d]
    .map((word) => {
      let hex = "";
      for (let i = 0; i < 4; i++) hex += ((word >>> (i * 8)) & 0xff).toString(16).padStart(2, "0");
      return hex;
    })
    .join("");
}

const S = [
  7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
  5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20,
  4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
  6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21,
];
const K = Array.from({ length: 64 }, (_, i) => Math.floor(Math.abs(Math.sin(i + 1)) * 0x100000000) | 0);
