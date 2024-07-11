import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sample/Services/product.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sample/pages/SelectedProduct.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late Future<List <dynamic>>products;
  Future<List<dynamic>>fetchData()async{
    final response = await http.get(Uri.parse('http://10.0.2.2:8080/api/v1/products/all')
    );
    final data = jsonDecode(response.body);
    print (data);
    List products = <Product>[];
    for(var product in data){
      products.add(Product.fromJson(product));
    }
    return products;
  }

  @override
  void initState(){
    super.initState();
    products = fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        title: Text(
          'Menu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.black,
          ),
        ),
        centerTitle:true,
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: FutureBuilder(
            future: products,
            builder: (context, snapshots){
              if(snapshots.connectionState == ConnectionState.waiting){
                return Center(
                  child: SpinKitFadingCube(
                    color: Colors.blue[100],
                    size: 80.0,
                  ),
                );
              }
              if (snapshots.hasData){
                List products = snapshots.data!;
                return Padding(
                  padding: EdgeInsets.all(3.0),
                  child: ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index){
                        return Card(
                          color: Colors.grey[300],
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    products[index].productName,
                                style: TextStyle(fontWeight:FontWeight.bold)),
                                Text(products[index].price.toString(),
                                style: TextStyle(color: Colors.grey[600],
                                ),
                                )
                              ],
                            ),
                            leading:CircleAvatar(backgroundImage: NetworkImage(products[index].url),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SelectedProduct(product: products[index]),
                                )
                              );
                            },
                          ),
                        );
                      },
                  ),
                );
              }
              return Center(
                child: Text('Unable to load Data'),
              );
            },
          ),
        ),
      ),
    );
  }
}
