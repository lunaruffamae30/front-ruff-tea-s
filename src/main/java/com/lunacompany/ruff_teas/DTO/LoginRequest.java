package com.lunacompany.ruff_teas.DTO;

public class LoginRequest {

    private String usernameOrEmail;
    private String password;

    LoginRequest(){}

    public LoginRequest(String usernameOrEmail, String password){
        this.usernameOrEmail = usernameOrEmail;
        this.password = password;
    }
//getters
    public String getUsernameOrEmail() {
        return usernameOrEmail;
    }

    public String getPassword() {
        return password;
    }
//setters
    public void setUsernameOrEmail(String usernameOrEmail) {
        this.usernameOrEmail = usernameOrEmail;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    


}
