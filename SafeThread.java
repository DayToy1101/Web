package leason4;

public class SafeThread {
    private static int count = 0;
    public static void main(String[] args) {
        //同时启动20个线程，每个线程对同一个变量执行操作：循环10000次，每次循环++操作
        //全部线程执行完之后，打印变量的值，检查是否是预期的结果；
        for (int i = 0; i < 20; i++) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    for (int j = 0; j < 10000; j++) {
                        //increment();
                        //sychronized加锁操作
                        synchronized (SafeThread.class){
                            count++;
                        }
                    }
                }
            }).start();
        }
        while (Thread.activeCount() > 1) {
            Thread.yield();
        }
        System.out.println(count);
    }
    public static synchronized void increment(){//对当前类对象进行加锁
        count++;
    }
    public synchronized void increment2(){//对this对象加锁，无法达到同步互斥的效果

    }
}
