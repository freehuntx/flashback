import com.jpexs.decompiler.flash.SWF;
import com.jpexs.decompiler.flash.abc.ABC;
import com.jpexs.decompiler.flash.abc.avm2.parser.script.AbcIndexing;
import com.jpexs.decompiler.flash.abc.avm2.parser.script.ActionScript3Parser;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * Compiles standalone AS3 classes into one raw ABC file using FFDec's
 * built-in compiler (no Flex SDK needed).
 *
 * Usage: java -cp ffdec_lib.jar:. CompileAbc <context.swf> <out.abc> <File1.as> [File2.as ...]
 *
 * The context SWF only provides the class index for type resolution next to
 * playerglobal; any AS3 SWF works. Files are compiled in order, so a class
 * may reference classes compiled before it.
 */
public class CompileAbc {
    public static void main(String[] args) throws Exception {
        if (args.length < 3) {
            System.err.println("usage: CompileAbc <context.swf> <out.abc> <File.as>...");
            System.exit(2);
        }
        SWF.initPlayer();
        SWF swf;
        try (InputStream in = new FileInputStream(args[0])) {
            swf = new SWF(in, false);
        }
        ABC abc = new ABC(null);
        AbcIndexing index = swf.getAbcIndex();
        index.selectAbc(abc);
        for (int i = 2; i < args.length; i++) {
            String source = new String(Files.readAllBytes(Paths.get(args[i])), StandardCharsets.UTF_8);
            ActionScript3Parser parser = new ActionScript3Parser(index);
            parser.addScript(source, args[i], i - 2, i - 2, swf.getDocumentClass(), abc);
            index.refreshSelected();
            System.err.println("compiled " + args[i]);
        }
        try (OutputStream out = new BufferedOutputStream(new FileOutputStream(args[1]))) {
            abc.saveToStream(out);
        }
        System.exit(0);
    }
}
