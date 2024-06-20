package com.lunacompany.ruff_teas.Controllers;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lunacompany.ruff_teas.Model.UserModel;



@RestController
public class UserController {

    @GetMapping("/user")
    public UserModel getuser(){
        return new UserModel(1, "ruffamae", "ruffamae@gmail.com", "ruffa2003");
    }
}
