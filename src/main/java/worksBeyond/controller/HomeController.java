package worksBeyond.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class HomeController {
 
//    @RequestMapping(method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
//    public String redirect(){
//        return "redirect:/protected/home";
//    }
    
    @RequestMapping(method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
    public ModelAndView homepage(){
        return new ModelAndView("welcomeHome");
    }
   
    @RequestMapping(value= "/ourStory")
    public ModelAndView ourStorypage(){
        return new ModelAndView("ourStory");
    }  
    
    @RequestMapping(value= "/whoWeServe")
    public ModelAndView whoWeServepage(){
        return new ModelAndView("whoWeServe");
    }  
    
    @RequestMapping(value= "/requestServices")
    public ModelAndView requestServicespage(){
        return new ModelAndView("requestServices");
    } 
    
    @RequestMapping(value= "/faq")
    public ModelAndView faqpage(){
        return new ModelAndView("faq");
    }  
    
    @RequestMapping(value= "/contactUs")
    public ModelAndView contactUspage(){
        return new ModelAndView("contactUs");
        
    }
   
    
    
}