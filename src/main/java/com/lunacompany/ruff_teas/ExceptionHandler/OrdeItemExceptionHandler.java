package com.lunacompany.ruff_teas.ExceptionHandler;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.lunacompany.ruff_teas.NotFoundException.OrderItemNotFoundException;

@RestControllerAdvice
public class OrdeItemExceptionHandler {

    @ExceptionHandler(OrderItemNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String OrderItemNotFoundHandler(OrderItemNotFoundException e){
        return e.getMessage();
    }

}
