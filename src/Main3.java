import java.util.Scanner;

public class Main3 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();       // 정수 n
        int num = 0;                // 총합

        for(int i = n; i > 0; i--){ // n이 1이 될 때까지 더하는 반복문
            num += i;               // num = num + i
        }
        System.out.println(num);    // num 출력

    }
}
