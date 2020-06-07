package dt;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class synchronizedTest {
    public static synchronized void t1(){

    }
    public static synchronized void t2(){
        t1();
    }
    public static Lock LOCK = new ReentrantLock();
    public static Condition CONDITION = LOCK.newCondition();
    public static void t3(){
        try{
            //ctrl+alt+b---->查看某个类/接口的子类/实现类
//            AbstractQueuedSynchronizer
            LOCK.lock();//=synchronized()加锁的代码
            //执行业务
//            while(库存中达到上限){
//                CONDITION.await();//=synchronized锁对象.wait()							}
//                System.out.println("t3");
//                CONDITION.singal();//=synchronized锁对象.notify()
//                CONDITION.singalAll();//=synchronized锁对象.notifyAll()
            }finally{
                LOCK.unlock();
            }
        }

    public static void main(String[] args) {
        //Lambda表达式
        new Thread(()->{
            while (true) {
                t2();
            }
        }).start();
    }
}
