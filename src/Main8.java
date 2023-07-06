import java.io.*;
import java.util.LinkedList;

public class Main8 {
    public static void main(String[] args) throws IOException {

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

//        String test = br.readLine();            // 테스트 갯수
//        int count = Integer.parseInt(test);     // 형변환

        String L = br.readLine();               // 키로거 입력받는 문자열 L
        LinkedList<String> list = new LinkedList<>();   // 연결리스트
        int arrow = 0;

        for(int i = 0; i < L.length(); i++){
            if(arrow == 0){
                list.add(String.valueOf(L.charAt(i)));
            }else {
                list.add(arrow, String.valueOf(L.charAt(i)));
                if(arrow == (list.toArray().length - 1)){
                    arrow = list.toArray().length;
                }
            }
            if(list.contains("-")){
                if(arrow == 0){
                    arrow = list.indexOf("-");
                } else if (arrow == list.toArray().length) {
                    list.remove("-");
                    list.remove(arrow - 2);
                } else {
                    list.remove("-");
                    list.remove(arrow - 1);
                }
            } else if (list.contains(">")) {
                arrow = list.indexOf(">") + 1;
                list.remove(">");
                if(arrow > list.toArray().length){
                    arrow = list.toArray().length;
                }
            } else if (list.contains("<")) {
                arrow = list.indexOf("<") - 1;
                if(arrow < 0){
                    arrow = 0;
                }
                list.remove("<");
            } else if (arrow > list.toArray().length){
                arrow = list.toArray().length;
            }
        }
        bw.write(String.valueOf(list));
        bw.flush();
    }
}