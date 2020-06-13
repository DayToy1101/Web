package dt.controller;

import dt.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("/1")
public class LoginController {
    /**
     * 两个页面，login.html和index.html，哪些URL能够访问，每个URL访问的时候是否是转发的？
     *访问index.html：
     *        1、/--->SpringBoot默认的首页（转发）
     *        2、/index.html
     * 访问login.html：
     *        1、/login.html
     *        2、/login ---> 通过LoginController中的方法（转发）
     * @return
     */
    @RequestMapping("/login")//客户端请求方法的注解
    public String login(Integer i){
        if(i == 1)
            return "redirect:/index.html";//重定向
        else
            return "forward:/index.html";//转发
        //return "/login.html";
        //return "/index.html";
    }

    @RequestMapping(value = "/login2",method = RequestMethod.POST)
    @ResponseBody
    public Object login2(){
        User user = new User();
        user.setUsername("烤鸭");
        user.setPassword("123");
        user.setBirthday(new Date());
        return user;
    }
    @RequestMapping(value = "/login3",method = RequestMethod.POST)
    @ResponseBody
    public Object login3(User u){
        System.out.println(u);
        User user = new User();
        user.setUsername("烤鸭");
        user.setPassword("123");
        user.setBirthday(new Date());
        return user;
    }
    @RequestMapping(value = "/login4",method = RequestMethod.POST)
    @ResponseBody
    public Object login4(@RequestBody User u){
        System.out.println(u);
        User user = new User();
        user.setUsername("烤鸭");
        user.setPassword("123");
        user.setBirthday(new Date());
        return user;
    }
    @RequestMapping(value = "/login5",method = RequestMethod.POST)
    @ResponseBody
    public Object login5(HttpServletRequest request, HttpServletResponse response,User u){
        if("abc".equals(u.getUsername())&&"123".equals(u.getPassword())){
            HttpSession session = request.getSession();
            session.setAttribute("user",u);
            User user = new User();
            user.setUsername("烤鸭");
            user.setPassword("123");
            user.setBirthday(new Date());
            return user;
        }
        throw new RuntimeException("登录不成功！");
    }
}
