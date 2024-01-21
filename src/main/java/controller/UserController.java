package controller;

import dao.UserDao;
import jakarta.servlet.http.HttpServlet;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
public class UserController extends HttpServlet {
    @Autowired
     UserDao dao;

    @RequestMapping("/home")
    public String home(Model model){
        model.addAttribute("name","Raj");
        return "index";
    }

    @RequestMapping("/form")
    public String contactForm(){
        return "form";
    }


    @RequestMapping(path = "/formprocess")
    public String contactForms(@ModelAttribute User user){
        dao.save(user);
      return "redirect:/home";

    }
//    @RequestMapping(path = "/viewuser")
//    public void viewUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<User> userListss = dao.viewUsers();
//        System.out.println(userListss);
//        request.setAttribute("userList", userListss);
////
//         RequestDispatcher dispatcher = request.getRequestDispatcher("viewUsers.jsp");
//         dispatcher.forward(request,response);
//
//
//
////        return "viewUsers";
//
//    }

    @RequestMapping(path = "/viewuser",method = RequestMethod.GET)
    public  String viewUser(Model model)  {
        List<User> userListss = dao.viewUsers();
        model.addAttribute("userList", userListss);
        return "viewUsers";
    }

    @RequestMapping(value="/deleteUser/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable int id){
        dao.delete(id);
        return "redirect:/viewuser";
    }

    @RequestMapping(value="/editUser/{id}")
    public String edit(@PathVariable int id, Model m){
        User user=dao.getUserById(id);
        m.addAttribute("user",user);
        return "empeditform";
    }


}
