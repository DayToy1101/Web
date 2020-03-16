package leason3;

public class UnsafeThread {
    private static int count = 0;
    public static void main(String[] args) {
        //同时启动20个线程，每个线程对同一个变量执行操作：循环10000次，每次循环++操作
        //全部线程执行完之后，打印变量的值，检查是否是预期的结果；
        for(int i = 0;i<20;i++) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    for (int j = 0; j < 10000; j++) {
                        count++;
                    }
                    for(int j = 0;j<10000;j++){
                        count--;
                    }
                }
            }).start();
        }
        while(Thread.activeCount()>1){
            Thread.yield();
        }
        //1、不是预期结果20*10000
        //2、每次运行结果不一样
        System.out.println(count);
    }
}
