import java.util.Scanner;

public class back_25314 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        N = N / 4;

        String string = "long";    // long을 문자열에 넣고
        String str = " long";

        for(int i = 1; i < N; i++){ // N번 반복
            string = string + str;       // 반복 횟수에 따른 long 문자열 더하기
        }
        System.out.println(string + " int");

    }
}