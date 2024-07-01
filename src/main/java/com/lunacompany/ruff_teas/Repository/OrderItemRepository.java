package com.lunacompany.ruff_teas.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lunacompany.ruff_teas.Model.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long>{

}
