import java.util.Scanner;

public class Main4 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int result = sc.nextInt();      // 총합 가격
        int count = sc.nextInt();       // 총 물건 갯수

        int[] sum = new int[count];     // 총 물건 갯수 배열

        for(int i = 0; i < sum.length; i++){
            int a = sc.nextInt();       // 각 물건 가격
            int b = sc.nextInt();       // 각 물건 갯수

            result = result - a*b;      // 총합에서 각 물건의 가격 총합 빼기
        }
        if(result == 0){                // 총합이 0이라면
            System.out.println("Yes");
        }else {                         // 총합이 0이 아니라면
            System.out.println("No");
        }

    }
}
