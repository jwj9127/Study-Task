import javax.swing.text.html.parser.Parser;
import java.io.*;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException{

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String S = br.readLine();

        if(S.contains("pi") || S.contains("ka") || S.contains("chu")){
            S = S.replace("pi", "");
            S = S.replace("ka", "");
            S = S.replace("chu", "");
            if(S == ""){
                bw.write("YES");
                bw.flush();
            }else {
                bw.write("NO");
                bw.flush();
            }
        }else {
            bw.write("NO");
            bw.flush();
        }
    }
}