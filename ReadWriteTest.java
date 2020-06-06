package dt;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class ReadWriteTest {
    private static ReadWriteLock LOCK = new ReentrantReadWriteLock();
    private static Lock READ_LOCK = LOCK.readLock();
    private static Lock WRITE_LOCK = LOCK.writeLock();
    public static void readFile(){
        try {
            READ_LOCK.lock();
            //IO读文件
        } finally {
            READ_LOCK.unlock();
        }
    }
    public static void writeFile(){
        try {
            WRITE_LOCK.lock();
            //IO写文件
        } finally {
            WRITE_LOCK.unlock();
        }
    }

    public static void main(String[] args) {
        //20个线程读文件
        for(int i = 0;i < 20;i++){
            //
        }
        //20个线程写文件
        for(int i = 0;i < 20;i++){
            //
        }
    }
}
