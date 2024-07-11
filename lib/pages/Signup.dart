import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sample/Services/User.dart';
import 'package:http/http.dart' as http;


class Signup extends StatefulWidget {
  const Signup({super.key});


  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey <FormState>();
  String name = '';
  String email = '';
  String password ='';
  bool _obscure = true;
  IconData _obscureIcon = Icons.visibility_off;


  createAccount(User user) async{
    final response = await http.post(
      Uri.parse('http://10.0.2.2:8080/api/v1/auth/register/user'),
      headers : <String, String>{
        'Content-Type' : 'application/json; charter=UTF-8'
      },
      body: jsonEncode(<String, dynamic>{
        'username' : user.username,
        'email' : user.email,
        'password' : user.password
      }),
    );
    print(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15.0, 50.0, 10.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:  const EdgeInsets.only(bottom: 1.0),
                  child: Image.asset(
                    'assets/ruf.png',
                    width: 600.0,
                    height: 300.0,
                  ),
                ),
                SizedBox(height: 1.0,),
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        maxLength: 40,
                        decoration: InputDecoration(
                          label: Text(
                              'Name',
                              style:TextStyle(color: Colors.black),
                          ),
                            prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)
                          )
                        ),
                        validator: (value){
                          if(value == null|| value.isEmpty){
                            return 'Provide Name';
                          }
                          if(value.length <2){
                            return 'Name should be atleast 3 letters long';
                          }
                          return null;
                        },
                        onSaved: (value){
                          name = value!;
                        },
                      ),
                      SizedBox(height: 15.0,),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            label: Text(
                                'Email',
                              style:TextStyle(color: Colors.white),
                            ),
                          prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                        ),
                        validator: (value){
                          if (value == null || value.isEmpty){
                            return 'Provide an email';
                          }
                          return null;
                        },
                        onSaved: (value){
                          email = value!;
                        },
                      ),
                      SizedBox(height: 15.0,),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        obscureText: _obscure,
                        decoration: InputDecoration(
                            label: Text(
                                'Password',
                                style:TextStyle(color: Colors.black),
                            ),
                          prefixIcon: Icon(Icons.lock_rounded),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureIcon),
                            onPressed:(){
                              setState(() {
                                _obscure = !_obscure;
                                if(_obscure){
                                  _obscureIcon = Icons.visibility_off;
                                }else{
                                  _obscureIcon = Icons.visibility;
                                }
                              });
                            },
                          ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                        ),
                        validator: (value){
                          if(value==null|| value.isEmpty){
                            return'Provide a password';
                          }
                          if (value.length <8){
                            return'password should be atleast 8 characters long';
                          }
                          if (value.length>20){
                            return'Password must be 20 characters long';
                          }
                          return null;
                        },
                        onSaved: (value){
                          password = value!;
                        },
                      ),
                      SizedBox(height: 15.0,),
                      ElevatedButton(
                          onPressed: (){
                           if ( formKey.currentState!.validate()){
                             formKey.currentState!.save();
                             User user = User(
                             username:name,
                             email:email,
                             password:password
                             );
                             createAccount(user);
                           }
                          },
                          child: Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[400],
                            foregroundColor: Colors.black
                          ),
                      ),
                      SizedBox(height: 15.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'or Signup with',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0,),
                      ElevatedButton(
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.g_mobiledata),
                            SizedBox(width: 10.0,),
                            Text('Google'),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.black
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      ElevatedButton(
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook,),
                            SizedBox(width: 10.0,),
                            Text('Facebook'),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.black
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
