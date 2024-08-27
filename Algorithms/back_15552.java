import java.io.*;
import java.util.StringTokenizer;

public class back_15552 {
    public static void main(String[] args) throws IOException {

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));   // BufferedReader
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out)); // BufferedWriter

        int T = Integer.parseInt(br.readLine());        // 테스트 케이스 T를 1줄로 받고 정수형으로 변환

        for(int i = 0; i < T; i++){
            String  str = br.readLine();       // 두 개의 정수 받기

            StringTokenizer st = new StringTokenizer(str);  // StringTokenizer

            int a = Integer.parseInt(st.nextToken());   // 정수 a, b 토큰으로 나누기
            int b = Integer.parseInt(st.nextToken());

            int c = a + b;      // a + b
            String string = Integer.toString(c);    // int c를 string으로 형변환
            bw.write(string + "\n");
        }
        bw.flush();

    }
}