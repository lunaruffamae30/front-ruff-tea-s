package com.lunacompany.ruff_teas.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lunacompany.ruff_teas.Model.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{

}
