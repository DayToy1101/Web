package leason4;

public class VolatileTest2 {
    private static final int NUM = 20;
    private static final int COUNT = 10000;
    private volatile static int SUM;

    public static void main(String[] args) {
        for (int i = 0; i < NUM; i++) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    for (int j = 0; j < COUNT; j++) {
                        synchronized (VolatileTest2.class) {
                            if(SUM<100000) {
                                SUM++;
                            }
                        }
                        //SUM++分解为三条指令
                        //1、读取主内存的SUM变量
                        //2、SUM=SUM+1
                        //3、写回主内存
                        //volatile不能保证原子性，所以不能满足n++，n--操作的线程安全
                        //volatile对变量进行赋值操作时，需要是常量（不能依赖变量）
                    }
                }
            }).start();
            while(Thread.activeCount()>1){
                Thread.yield();
            }
        }
        System.out.println(SUM);
    }
}
