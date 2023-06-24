import java.util.Scanner;

public class Main2 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();       // 정수 N 입력

        for(int i = 1; i <= 9; i++){ // 구구단 for문
            System.out.println(N + " * " + i + " = " + N * i);
        }

    }
}
