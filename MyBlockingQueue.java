package leson6;
/*
实现阻塞式队列：
1、满足线程安全的生产消费功能
2、生产、消费达到上限或下限是，需要阻塞等待
 */
public class MyBlockingQueue<E> {

    private Object[] items;

    private int offerIndex;//添加元素索引
    private int pollIndex;//弹出元素索引
    private int size;//有效容量

    public MyBlockingQueue(int capacity){
        items = new Object[capacity];
    }
    //添加元素
    public synchronized void offer(E e) throws InterruptedException {
        while(size==items.length){//达到上限需要等待
            wait();
        }
        offerIndex = (offerIndex+1)%items.length;
        //存放元素的索引++，需要满足循环队列索引>数组长度的情况
        items[offerIndex] = e;
        size++;
        notifyAll();
    }
    //弹出元素
    public synchronized E poll() throws InterruptedException {
        while(size==0){
            wait();
        }
        pollIndex = (pollIndex+1)%items.length;
        size--;
        notifyAll();
        return (E)items[pollIndex];
    }

    public static void main(String[] args) throws InterruptedException {
        MyBlockingQueue<Integer> queue = new MyBlockingQueue<>(100);
        for(int i = 0;i < 5;i ++) {
            final int k = i;
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        for(int j = 0;j <100;j ++){
                            queue.offer(k*100+j);
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        }
        while(true){
            System.out.println(queue.poll());
        }
    }
}
