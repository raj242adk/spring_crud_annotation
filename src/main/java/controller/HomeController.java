


package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
//    @RequestMapping("/home")
//    public String home(Model model){
//        model.addAttribute("name","Raj");
//        System.out.println("This is home page");
//        return "userValue";
//    }

    @RequestMapping("/about")
    public String about(){
        System.out.println("This one is the about page");
        return "about";
    }
}
