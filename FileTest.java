package leson2;

import java.io.File;
import java.util.Arrays;

public class FileTest {
    public static void main(String[] args) {
        File file1 = new File("D:\\桌面\\JAVA13\\Web20200304\\IO-study\\res");
        File file2 = new File("D:\\桌面\\JAVA13\\Web20200304\\IO-study\\res1");
        System.out.println(file1.isDirectory());
        System.out.println(Arrays.toString(file1.listFiles()));
        System.out.println(file1.getPath());
        System.out.println(file2.exists());
        file2.mkdirs();//生成目录
    }
}
