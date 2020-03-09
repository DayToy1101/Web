package leason2;

public class MainThread {
    public static void main(String[] args) {
        MyThread thread = new MyThread();
        //thread.start();//创建线程方法1
        thread.run();//方式2
        //run方法直接调用，不会启动线程，
        //new MyThread().start();
        new Thread(new MyRunnable()).start();//线程启动是通过start方法
    }
}
class MyThread extends Thread{
    @Override
    public void run(){
        System.out.println(Thread.currentThread().getName());
    }
}
class MyRunnable implements Runnable{
    @Override
    public void run(){
        System.out.println(Thread.currentThread().getName());
    }
}
