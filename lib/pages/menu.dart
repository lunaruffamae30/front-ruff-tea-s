import 'package:flutter/material.dart';
import 'package:sample/Services/product.dart';
import 'package:sample/Services/menuCard.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List products =<Product>[
    Product(productName:"Deluxe Burger" ,price:49.99 ),
    Product(productName:"Taro Milk Shake",price: 39.99),
    Product(productName: "cheesecake", price: 29.99 ),
    Product(productName: "Mcdonalds", price: 299.0)


  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Menu',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle:true,
      ),
      body:Padding(
        padding: EdgeInsets.all(5.0),
        child:Column(
          children: products.map((product)=> Menucard (product: product)).toList(),
        ) ,
      ),
    );
  }
}
