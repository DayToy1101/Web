import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/order")
public class OrderServelt extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 设置请求编码及响应的编码，响应的数据类型
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");

        //用户身份校验:登录成功就可以获取到已有的session对象；
        //如果没有登录，获取不到，create=false，也不创建session对象
        HttpSession session = req.getSession(false);
        //登录过就不为null
        if(session == null){//表示未登录
            resp.sendRedirect(req.getContextPath()+"/index.html");
        }else{//表示已登录
            PrintWriter pw = resp.getWriter();
            pw.println("<h2>已经登录，可以访问");
            pw.flush();
        }
    }
}
