package dt;

import java.util.concurrent.*;

/**
 * Callable创建线程：
 * Future/FutureTask
 */
public class CallableTest {
    public static void main(String[] args) throws ExecutionException, InterruptedException {
        Callable<Integer> c = new Callable<Integer>() {
            @Override
            public Integer call() throws Exception {
                System.out.println("call");
                return 123;
            }
        };
        //Thread使用Calllable
        FutureTask<Integer> task = new FutureTask<>(c);
        new Thread(task).start();;
        System.out.println("main");
        Integer r = task.get();//当前线程阻塞等待，直到线程执行完毕（join效果差不多），但可以获取线程的返回值
        System.out.println(r);

        //线程池的方式
        ExecutorService pool = Executors.newFixedThreadPool(4);
        Future<Integer> future = pool.submit(c);
        //future.get();//阻塞等待
        Integer r2= future.get();
        System.out.println(r2);
    }
}
