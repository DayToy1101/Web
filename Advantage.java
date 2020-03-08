package leason2;

public class Advantage {
    //private static final int COUNT = 10_0000_0000;

    private static final int NUM = 5;

    private static void increment(){
        int count = 10_0000_0000;
        for(int i = 0; i < count;i++){
            count++;
        }
    }

    //串行：依次执行
    private static void serial(){
        long start = System.currentTimeMillis(); //返回一个从1970-01-01开始到当前时间的毫秒数
        for(int i = 0;i < NUM;i++){
            increment();
        }
        long end = System.currentTimeMillis();
        System.out.printf("串行的执行时间是：%s毫秒\n",end-start);
    }

    //并行/并发：（有时候Java语义里面，并发这个词既表达并发，也表达并行）
    private static void parallel(){
        long start = System.currentTimeMillis();
        for(int i = 0;i < NUM;i++){
            new Thread(new Runnable() {
                @Override
                public void run() {
                    increment();
                }
            }).start();
        }
        while (Thread.activeCount() > 1){
            Thread.yield();  //活跃线程数>1，等待
            //将当前线程由运行态--》就绪态
        }
        long end = System.currentTimeMillis();
        System.out.printf("并行的执行时间是：%s毫秒\n",end-start);
    }

    public static void main(String[] args) {
        serial();
        parallel();
    }
}