package dt;

import org.junit.Test;

public class ThreadLocalTest {
    private static ThreadLocal<String> HOLDER = new ThreadLocal<>();
    @Test
    public void t1(){
        //ThreadLocal对象都和线程绑定，里边的值每个线程间都是隔离开的
//        HOLDER.get();//获取当前线程中，某个ThreadLocal对象的值
//        HOLDER.remove();//删除当前线程中，某个ThreadLocal对象的值
//        HOLDER.set("abc");//设置当前线程中，某个ThreadLocal对象的值
        try {
            HOLDER.set("abc");
            for(int i = 0;i < 20;i++){
                final int j = i;
                new Thread(()->{
                    try {
                        HOLDER.set(String.valueOf(j));
                        if(j == 5){
                            Thread.sleep(500);
                            System.out.println(HOLDER.get());
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }finally {
                        HOLDER.remove();
                    }
                }).start();
            }
            while(Thread.activeCount() > 1){
                Thread.yield();
            }
            System.out.println(HOLDER.get());
        } finally {
            HOLDER.remove();//只要在某个线程设置了ThreadLocal值，在线程结束前一定要remove
        }
    }
}
