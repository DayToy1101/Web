package leasson1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Scanner;

//客户端
public class Client {
    //localhost也可以
    private static final String HOST = "127.0.0.1";
    private static final int PORT = 9000;

    public static void main(String[] args) throws IOException {
        Socket client = new Socket(HOST,PORT);
        BufferedReader in = new BufferedReader(new InputStreamReader(client.getInputStream()));
        PrintWriter out = new PrintWriter(client.getOutputStream(),true);
        Scanner sc = new Scanner(System.in);
        new Thread(new Runnable() {
            @Override
            public void run() {
                while (sc.hasNextLine()){
                    String line = sc.nextLine();
                    out.println(line);
                }
            }
        }).start();
        //out.println("有钱哥哥");
        String str;
        //阻塞等待客户端数据输入
        while ((str = in.readLine())!=null){//IO流在结束时返回才是null
            System.out.println(str);
        }
    }
}
