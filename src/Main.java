import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int count = sc.nextInt();       // 테스트 케이스 갯수
        int[] num = new int[count];     // 갯수의 배열

        for(int i = 0; i < num.length; i++){    // 배열만큼 반복
            int A = sc.nextInt();               // A 입력
            int B = sc.nextInt();               // B 입력

            System.out.println(A + B);          // A + B 출력
        }

    }
}
