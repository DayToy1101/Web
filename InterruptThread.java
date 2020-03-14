package leason3;

public class InterruptThread {
    public static void test1() {
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                while(true){

                }
            }
        });
        t.start();
        t.interrupt();
    }
    public static void test2(){
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                /*for(int i = 0;i<50;i++) {
                    System.out.println(i+"="+Thread.currentThread().getName());
                }*/
                //线程运行状态时，需要自行判断中断标志位，是否往下执行
                while(!Thread.interrupted()){
                    System.out.println(Thread.currentThread().getName());
                }
                /* while(Thread.currentThread().isInterrupted()){
                    System.out.println(Thread.currentThread().getName());
                }*/
            }
        });
        t.start();//t线程中的中断标志位=false
        t.interrupt();//t线程的中断标志位=true
    }
    public static void test3(){
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                //阻塞状态时，通过捕获及处理异常，来处理线程的中断逻辑

                try {
                    System.out.println(Thread.currentThread().isInterrupted());//true
                    Thread.sleep(3000);
                    //线程处于调动wait()/join()/sleep()阻塞时，如果把当前线程中断掉，会直接抛出一个异常
                    //抛出异常以后，线程中断标志位会进行重置
                    System.out.println(Thread.currentThread().getName());
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    System.out.println(Thread.currentThread().isInterrupted());//false
                }
            }
        });
        t.start();//t线程中的中断标志位=false
        t.interrupt();//t线程的中断标志位=true
    }
    public static void test4(){
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                for(int i= 0;i<10;i++){
                    //System.out.println(Thread.interrupted());//返回中断标志位，并重置中断标志位
                    System.out.println(Thread.currentThread().isInterrupted());//返回中断标志位，但不重置
                }
            }
        });
        t.start();
        t.interrupt();
    }
    private static volatile boolean IS_INTERRUPTED;
    //使用自定义的中断标志位
    public static void test5(){
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                //自定义的标志位能满足线程处于运行态的中断操作
                /*while(!IS_INTERRUPTED){
                    System.out.println(Thread.currentThread().getName());
                }*/
                //自定义的标志位满足不了线程处于阻塞状态时的中断操作
                try {
                    Thread.sleep(3000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        });
        t.start();
        IS_INTERRUPTED=true;
    }
    public static void main(String[] args)throws Exception {
        //test1();
        //test2();
        //test3();
        //test4();
        test5();
    }
}
