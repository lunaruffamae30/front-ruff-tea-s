import 'package:flutter/material.dart';
import 'package:sample/Services/product.dart';

class menuCard extends StatelessWidget {
 final Product product;

 menuCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              product.productName,
              style:TextStyle(
                  fontSize:20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text('${product.price}',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
