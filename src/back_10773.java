import java.io.*;
import java.util.Stack;

public class back_10773 {
    public static void main(String[] args) throws IOException {

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        Stack<Integer> stack = new Stack<>();   // int형 스택 선언
        int result = 0;

        int K = Integer.parseInt(br.readLine());    // 총 정수의 갯수
        for(int i = 0; i < K; i++){                 // 총 갯수만큼 반복
            int num = Integer.parseInt(br.readLine());  // stack에 저장할 정수
            stack.add(num);                             // stack에 입력
            if(num == 0){                    // stack에 "0"이 있다면
                stack.pop();                            // 0을 제거
                stack.pop();                            // 그 후 가장 최근값 제거
            }
//            System.out.println(stack);
        }
        int length = stack.size();            // 스택 사이즈를 대입해주는 변수 length
        for(int j = 0; j < length; j++){      // 스택의 사이즈만큼 반복
            result += stack.pop();                 // result에 사이즈의 마지막값 출력해서 저장하면서 stack의 마지막 값 삭제
        }
        bw.write(String.valueOf(result));
        bw.flush();
    }
}