package leson7;

public class SequeuePrint {
   /*private static volatile int INDEX;

    public static void print(String[] array,int count){
        for(int i = 0;i < array.length;i++){
            final int k = i;
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        for(int j = 0;j < count;j++){
                            synchronized (SequeuePrint.class){
                                while(INDEX % array.length != k){
                                    SequeuePrint.class.wait();
                                }
                                INDEX++;
                                System.out.print(array[k]);
                                if(k==array.length-1){
                                    System.out.println();
                                }
                                SequeuePrint.class.notifyAll();
                            }
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        }
    }*/
    public static void print(String[] array,int count){
        Print.INDEX=0;
        int index = 0;
        for(int i = 0;i < array.length;i++){
            final int k = i;
            new Thread(new Print()).start();
        }

    private static class Print implements Runnable{
         private static volatile int INDEX;

         private static int count;
         private static String[] array;
         public Print(){

         }
        @Override
        public void run() {
            try {
                for(int j = 0;j < count;j++){
                    synchronized (SequeuePrint.class){
                        while(INDEX % array.length != k){
                            SequeuePrint.class.wait();
                        }
                        INDEX++;
                        System.out.print(array[k]);
                        if(k==array.length-1){
                            System.out.println();
                        }
                        SequeuePrint.class.notifyAll();
                    }
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        print(new String[]{"A","B","C","D"},10);
    }

    /*
    有三个线程分别打印A，B，C
    打印结果为ABC，循环十次
    */
    /*
    public static void main(String[] args) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    for(int i = 0;i < 10;i++){
                        synchronized (SequeuePrint.class){
                            while(INDEX % 3 != 0){
                                SequeuePrint.class.wait();
                            }
                            INDEX++;
                            System.out.println("A");
                            SequeuePrint.class.notifyAll();
                        }
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }).start();
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    for(int i = 0;i < 10;i++){
                        synchronized (SequeuePrint.class){
                            while(INDEX % 3 != 1){
                                SequeuePrint.class.wait();
                            }
                            INDEX++;
                            System.out.println("B");
                            SequeuePrint.class.notifyAll();
                        }
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }).start();
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    for(int i = 0;i < 10;i++){
                        synchronized (SequeuePrint.class){
                            while(INDEX % 3 != 2){
                                SequeuePrint.class.wait();
                            }
                            INDEX++;
                            System.out.println("C");
                            SequeuePrint.class.notifyAll();
                        }
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }).start();
    }*/
}
