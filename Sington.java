package leason5;

public class Sington {
    private Sington() {

    }

    //饿汉式
    /*private static Sington SINGTON = new Sington();
    public static Sington getInstance(){
        return SINGTON;
    }*/
    //懒汉式、单线程
   /* private static Sington SINGTON;
    public static Sington getInstance() {
        if (SINGTON == null) {
            SINGTON = new Sington();
        }
        return SINGTON;
    }*/
   //懒汉式(多线程版，双重校验锁)
    private static volatile Sington SINGTON;//volatile保证变量的可见性，提高效率
    //使用volatile保证部分代码的顺序性：禁止指令进行重排序；建立内存屏障
    //synchronized保证的是线程之间的有序性；volatile保证的是指令之间的有序性
    //假设不使用volatile，但是可以保证变量的可见性，会不会出现问题（不保证代码的重排序，会怎么样？）
    //可能会导致最终结果不是我们想要的结果
    public static Sington getInstance() {
        if (SINGTON == null) {
            synchronized (Sington.class){
                //为了保证单例，返回的是同一个对象
                if(SINGTON == null) {//加锁之后再次判断，以防多次进行new操作
                    SINGTON = new Sington();
                    //new对象分解为三条指令：前两个是new操作，第三个是赋值
                    //1、分配内存空间
                    //2、初始化对象
                    //3、赋值给变量
                }
            }
        }
        return SINGTON;
    }
}