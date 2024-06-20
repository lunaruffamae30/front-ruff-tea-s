package com.lunacompany.ruff_teas.Controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class SampleController {
    //http:localhost:8080/hello-world
    @GetMapping("/hello-world")
    public String helloworld(){
        return"helloworld";
    }
    

}