package com.lunacompany.ruff_teas.Repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.lunacompany.ruff_teas.Model.Order;

public interface OrderRepository extends JpaRepository<Order, Long>{

}