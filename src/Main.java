import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();

        for(int i = 1; i <= 9; i++){    // i는 1부터 9까지 증가
            System.out.println(N + " * " + i + " = " + N * i); // 입력받은 정수 * i = 구구단
        }
    }
}
