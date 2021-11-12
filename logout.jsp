import java.io.IOException;
import java.io.PrintWriter;



public class logout extends HttpServlet {
     private static final long serialVersionUID=1L;
     protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
    	response.setContentType("text/html");
    	PrintWriter out=response.getWriter();
    	HttpSession session=request.getSession(false);
    	sesiion.removeAttribute("user");
    	session.invalidate();
    	out.println("You have successfully Loggeg out");
     }
     protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException ,IOException{
    	doGet(request,response); 
     }
}
