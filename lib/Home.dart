 import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int year =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        title:Text(
            'User Profile',
          style: TextStyle(
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold,
        ),
        ),
        actions: [

          IconButton(
            icon: Icon(Icons.logout),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
        backgroundColor: Colors.red[100],
        centerTitle: true,
      ),
      body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.jpg'),
                      radius: 70.0,
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    color: Colors.black,
                    thickness: 3.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_2,
                        color: Colors.black,
                      ),
                      SizedBox(width:3.0,),
                      Text(
                        'NAME',
                        style: TextStyle(
                            fontSize: 16.0,
                            color:Colors.black,
                            letterSpacing:2.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'RUFFA MAE V. LUNA',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Colors.black,
                        fontSize: 25.0
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_sharp,
                        color: Colors.black,
                      ),
                      SizedBox(width:3.0,),
                  Text(
                    'YEAR',
                    style: TextStyle(
                        fontSize: 16.0,
                        color:Colors.black,
                        letterSpacing:2.0
                    ),
                  ),
                  ],
                  ),
                  Text(
                    '$year YEAR',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Colors.black,
                        fontSize: 25.0
                    ),
                  ),

                  SizedBox(height: 30.0,),
                  Row(
                    children: [
                      Icon(
                        Icons.email_sharp,
                        color: Colors.black,
                      ),
                  SizedBox(height: 30.0,),
                  Text(
                    'EMAIL',
                    style: TextStyle(
                        fontSize: 16.0,
                        color:Colors.black,
                        letterSpacing:2.0
                    ),
                  ),
                  ],
                  ),
                  Text(
                    'ruffamaeluna323@gmail.com',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Colors.black,
                        fontSize: 25.0
                    ),
                  )
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        year += 1;
                      });
                    },
                    child: Text( 'ADD YEAR', style: TextStyle(color: Colors.black) ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.grey[300])
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


