package dt;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
    public static void main(String[] args) {
        ApplicationContext context = new
                ClassPathXmlApplicationContext("applications.xml");
//        //从容器中获取bean对象
//        Duck duck = (Duck) context.getBean("duck1");
//        System.out.println(duck);
//        Duck duck1 = (Duck) context.getBean("duck2");
//        System.out.println(duck1);
//        DuckShop shop = (DuckShop) context.getBean("DuckShop");
//        System.out.println(shop);
////        Person p1 = (Person) context.getBean("lily");
//        Person p1 = (Person) context.getBean(Person.class);
//        System.out.println(p1);
//        //通过类型在容器中获取bean：该类型只有一个对象在容器中，否则会报错
////        context.getBean(Duck.class);//会报异常
//        Duck duck3 = (Duck) context.getBean("duck3");
//        System.out.println(duck3);
//        Duck duck4 = (Duck) context.getBean("duck4");
//        System.out.println(duck4);

    }
}
