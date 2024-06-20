package com.lunacompany.ruff_teas.Controllers;


import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.lunacompany.ruff_teas.Model.UserModel;



@RestController
public class UserController {

    @GetMapping("/user")
    public UserModel getuser(){
        return new UserModel(1, "ruffamae", "ruffamae@gmail.com", "ruffa2003");
    }
    //Fetch multiple data
    @GetMapping("/users")
    public List <UserModel>getusers(){
        List<UserModel> users = new ArrayList<>();
        users.add(new UserModel(1, "Ruffa Mae", "ruffamae@gmail.com","ruffa1"));
        users.add(new UserModel(2, "Vhenus", "Vhenus@gmail.com","vhenus2"));
        users.add(new UserModel(1, "Carla", "carla@gmail.com","carla3"));
        return users;
    }
    @GetMapping("/user/{name}")
    public UserModel getUserFromName(@PathVariable("name")String name){
        return new UserModel(1, "ruffamae", "ruffamae@gmail.com", "ruffa20033"); 
    }
}
