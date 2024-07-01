package com.lunacompany.ruff_teas.NotFoundException;

public class OrderNotFoundException extends RuntimeException {
    public OrderNotFoundException(Long id){
        super("Could not found Order with " + id);

    }

}