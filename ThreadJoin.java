package leason2;

public class ThreadJoin {
    public static void main(String[] args) throws InterruptedException {

        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.println(Thread.currentThread().getName());
            }
        });
        t.start();
        //当前线程：代码行执行的时候所在的线程
        //t线程：线程引用对象
        //当前线程进行阻塞（运行态--》阻塞态）等待（满足一定条件），t线程（不做仍和处理，让t执行运行）
        //让线程进入等待的一定条件是：以下两个条件哪个先执行完都满足（等待到两个条件最短的时间点，然后往下执行）
        // 1、传入的时间（时间值+时间单位毫秒）
        //2、线程引用对象执行完毕
        t.join();//先将t这个线程执行完毕,再往下执行
        //t.join(2000);//传入时间单位
        System.out.println(Thread.currentThread().getName());
    }
}
