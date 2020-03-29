package leson7;

import leson6.MyBlockingQueue;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.PriorityBlockingQueue;

/*
定时器：
1、在约定好的时间点上，执行某个任务
2、间隔时间到了，不停的执行任务
 */
public class MyTimer {

    private MyBlockingQueue<Runnable> queue = new PriorityBlockingQueue<>();
    public MyTimer(){

    }
    /*
    定时任务
    @param task  需要执行的任务
    @param delay  从当前时间延迟多少毫秒，执行任务
    @param  period  间隔时间 <=0就忽略掉，>0需要每间隔给定时间，就执行任务
     */
    public  void schedule(Runnable task,long delay,long period){
//        try {
//            Thread.sleep(delay);
//            new Thread(task).start();
//            while (period > 0){
//                Thread.sleep(delay);
//                new Thread(task).start();
//            }
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
//        long current = System.currentTimeMillis();
        /*while(true){
            long next = System.currentTimeMillis();
            //当前时间next超过约定好的执行时间current+delay，执行任务
            if(current+delay<=next){

                if(period > 0){

                }else{
                    break;
                }
            }
        }*/
    }

    /*
    jdk的时间操作
     */
    public static void main(String[] args) {
        //Date
        Date date = new Date();//无参构造方法，返回系统当前时间
        Date date2 = new Date(9999);//以格林威治时间1970-01-01开始，经过给定时间数量的毫秒
        //DateFormat
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        System.out.println( df.format(date));
        //System时间获取
        long current = System.currentTimeMillis();//long类型的，从1970-01-01开始到当前时间经过的毫秒数

//        TimerTask task = new TimerTask() {
//            @Override
//            public void run() {
//                System.out.println("起床了");
//            }
//        };
//        new Timer().schedule(task,3000,1000);
//        new MyTimer().schedule(new Runnable() {
//            @Override
//            public void run() {
//                System.out.println("起床了");
//            }
//        },3000,1000);
        ExecutorService pool = Executors.newFixedThreadPool(4);
    }
}
