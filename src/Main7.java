import java.io.*;
public class Main7 {
    public static void main(String[] args) throws IOException{

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String S = br.readLine();

        if(S.contains("pi") || S.contains("ka") || S.contains("chu")){  // S 안에 pi , ka , chu 가 들어있다면
            S = S.replace("pi", "");                // pi 를 공백으로
            S = S.replace("ka", "");                // ka 를 공백으로
            S = S.replace("chu", "");               // chu 를 공백으로
            if(S == ""){                        // S 의 값이 없다면
                bw.write("YES");
                bw.flush();
            }else {                             // S 안에 값이 남았다면
                bw.write("NO");
                bw.flush();
            }
        }else {                     // S 안에 pi , ka , chu 가 없다면
            bw.write("NO");
            bw.flush();
        }
    }
}