package kz.nurs.springboot.controller;

import kz.nurs.springboot.UserService;
import kz.nurs.springboot.entities.Users;
import kz.nurs.springboot.repositories.PhonesRepository;
import kz.nurs.springboot.entities.Phone;
import kz.nurs.springboot.repositories.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class Maincontroller {

    @Autowired
    private PhonesRepository phonesRepository;
    @Autowired
    private UsersRepository  usersRepository;


    @GetMapping(value = "/")
    public String mainPage(Model model){
       List<Phone> phones=phonesRepository.findAll();
       model.addAttribute("phones", phones);
       model.addAttribute("user",getUserData());
        return "index";
    }

    @PostMapping(value = "/addphone")
    public  String addPhone(@RequestParam(name = "name") String name,
                            @RequestParam(name = "model") String phone_model,
                            @RequestParam(name = "price") int price){
        phonesRepository.save(new Phone(null,name,phone_model,price));
        return "redirect:/";
    }
    @PostMapping(value = "/savephone")
    public  String addPhone(@RequestParam(name = "id") Long id,
                            @RequestParam(name = "name") String name,
                            @RequestParam(name = "model") String phone_model,
                            @RequestParam(name = "price") int price){
        Phone phone=phonesRepository.getOne(id);
        if (phone!=null){
            phone.setName(name);
            phone.setModel(phone_model);
            phone.setPrice(price);
            phonesRepository.save(phone);
        }
        return "redirect:/";
    }
    @GetMapping(value = "/details/{id}")
    public String details(@PathVariable(name = "id") Long id, Model model){
        Phone phone=phonesRepository.getOne(id);
        model.addAttribute("phone",phone);
        return "details";
    }
    @GetMapping(value = "/delete/{id}")
    public String delete(@PathVariable(name = "id") Long id, Model model){
        Phone phone=phonesRepository.getOne(id);
        phonesRepository.delete(phone);
        return "redirect:/";
    }
    @GetMapping(value = "/login")
    public String loginPage(Model model) {
        model.addAttribute("user", getUserData());
        return "login";
    }
    private Users getUserData(){
    Users users=null;
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            User secUser=(User)authentication.getPrincipal();
            users=usersRepository.findByEmail(secUser.getUsername());


        }
        return users;
    }
}
