package dt;

import org.junit.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Semaphore;

public class ThreadWaitThenDo {
    @Test
    public void t1(){
        for(int i = 0;i <20;i++){
            new Thread(()->{
                System.out.println(Thread.currentThread().getName());
            }).start();
        }
        //入口线程执行t1（）方法：入口线程阻塞等待，直到所有子线程执行完毕
        while(Thread.activeCount() > 1){
            Thread.yield();
        }
        System.out.println("执行完毕："+Thread.currentThread().getName());
    }
    @Test
    public void t2() throws Exception{
        List<Thread> threads = new ArrayList<>();
        for(int i = 0;i <20;i++){
            Thread t = new Thread(()->{
                System.out.println(Thread.currentThread().getName());
            });
            threads.add(t);
            t.start();
        }
        //入口线程执行t2（）方法：入口线程阻塞等待，直到所有子线程执行完毕
        for(Thread t:threads){
            t.join();
        }
        System.out.println("执行完毕："+Thread.currentThread().getName());
    }
    @Test
    //CountDownLatch
    public void t3() throws Exception {
        CountDownLatch cd1 = new CountDownLatch(20);//计数器的初始值
        for(int i = 0;i <20;i++){
            Thread t = new Thread(()->{
                System.out.println(Thread.currentThread().getName());
                cd1.countDown();//计数器的初始值-1
            });
            t.start();
        }
        //入口线程执行t3（）方法：入口线程阻塞等待，直到所有子线程执行完毕
        cd1.await();//当前线程阻塞等待，直到计数器的值等于零
        System.out.println("执行完毕："+Thread.currentThread().getName());
    }
    @Test
    //Semaphore
    //阻塞等待一组线程执行完毕在执行后续操作
    public void t4() throws Exception {
        Semaphore s = new Semaphore(0);
        for(int i = 0;i <20;i++){
            Thread t = new Thread(()->{
                System.out.println(Thread.currentThread().getName());
                s.release();
            });
            t.start();
        }
        //入口线程执行t4（）方法：入口线程阻塞等待，直到所有子线程执行完毕
        s.acquire(20);
        System.out.println("执行完毕："+Thread.currentThread().getName());
    }
    @Test
    //Semaphore
    public void t5() throws Exception {
        //模拟服务端接收客户端http请求：只1000个并发
        // （在一个时间点，客户端任务数达到1000，再有客户端请求，将阻塞等待）
        Semaphore s = new Semaphore(1000);
        for (; ; ) {
            Thread t = new Thread(() -> {
                try {
                    s.acquire();
                    //模拟每个线程处理客户端http请求
                    System.out.println(Thread.currentThread().getName());
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }finally {
                    s.release();
                }
            });
            t.start();
        }
    }

//    public static void main(String[] args) {
//        //main线程阻塞等待，直到所有子线程执行完毕
//    }
}
