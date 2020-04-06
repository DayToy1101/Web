package leson2;

import org.junit.Test;

import java.io.*;

public class FileOperatorTest {
    @Test
    public void testRead1() throws IOException {
        //字节流转换为字符流，需要适应字节字符转换流
        //转换流可以设置编码：java文件的编码格式、文件编码格式
        //InputStreamReader：输入的字节字符转换流。或OutoutStreamWriter：输出的字节字符转换流
        FileInputStream fis = new FileInputStream(new File("D:\\桌面\\JAVA13\\Web20200304\\IO-study\\res/info.txt"));
        BufferedReader br = new BufferedReader(new InputStreamReader(fis));
        //按字符读取
//        String line;
//        while((line = br.readLine())!=null){
//            System.out.println(line);
//        }
        //按字符数组读取
        char[] chars = new char[1024];
        int len;
//        while((len=br.read(chars,0,1024))!=-1){
//            String str = new String (chars,0,len);
//            System.out.println(str);
//        }
        while ((len = br.read(chars)) != -1) {
            String str = new String(chars, 0, len);
            System.out.println(str);
        }
    }

    @Test
    public void testRead2() throws IOException {
        //字节流转换为字符流，需要适应字节字符转换流
        //转换流可以设置编码：java文件的编码格式、文件编码格式
        //InputStreamReader：输入的字节字符转换流。或OutoutStreamWriter：输出的字节字符转换流
        FileInputStream fis = new FileInputStream(new File("D:\\桌面\\JAVA13\\Web20200304\\IO-study\\res/info.txt"));
        //按字节读取
        byte[] bytes = new byte[1024];
        int len;
//        while((len = fis.read(bytes,0,1024))!=-1){
//            String str = new String(bytes,0,len);
//            System.out.println(str);
//        }
        while ((len = fis.read(bytes)) != -1) {
            String str = new String(bytes, 0, len);
            System.out.println(str);
        }
    }

    @Test
    public void testWrite1() throws IOException {
        FileOutputStream fos = new FileOutputStream(new File("D:\\桌面\\JAVA13\\Web20200304\\IO-study\\res/info.txt"));
        BufferedWriter br = new BufferedWriter(new OutputStreamWriter(fos,"UTF-8"));
        //使用缓冲流，输出的时候，要进行flush刷新缓冲区，否则不会真实输出数据到目的设备
        br.write("你喜欢海绵宝宝，我喜欢你\n");//写数据到系统内存缓冲区
        br.write("i love you!\n");
        br.flush();//将缓冲区的内容刷新到文件中去（缓冲区刷新，发送数据到目的设备）
    }
}