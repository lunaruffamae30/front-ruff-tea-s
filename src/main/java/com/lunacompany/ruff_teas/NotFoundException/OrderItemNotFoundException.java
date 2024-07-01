package com.lunacompany.ruff_teas.NotFoundException;

public class OrderItemNotFoundException extends RuntimeException {
    public OrderItemNotFoundException(Long id){
        super("Could not found Order Item with " + id);

    }

}
