package leson7;

import leson6.MyBlockingQueue;

public class MyThreadPool {

    //private int size;
    private MyBlockingQueue<Runnable> queue;
    public MyThreadPool(int size,int capacity){
        //this.size = size;
        queue = new MyBlockingQueue<>(capacity);
        for(int  i =0 ;i<size ;i++){
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        //正式员工一直运行
                        while(true){
                            //从仓库取包裹（任务）：
                            //1、成功取出包裹（任务），方法返回
                            //2、仓库取不出包裹（任务）{其他员工正在取，阻塞在synchronized代码行；仓库没有包裹wait（）方法阻塞}
                            Runnable task = queue.poll();
                            task.run();
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        }
    }
    public void execute(Runnable task){
        try {
            queue.offer(task);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        MyThreadPool pool = new MyThreadPool(5,100);
        pool.execute(new Runnable() {
            @Override
            public void run() {
                System.out.println("A");
            }
        });
        pool.execute(new Runnable() {
            @Override
            public void run() {
                System.out.println("B");
            }
        });
        pool.execute(new Runnable() {
            @Override
            public void run() {
                System.out.println("C");
            }
        });
    }
}
