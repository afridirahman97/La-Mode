import 'package:flutter/material.dart';

import './forgotPassword.dart';
//import './register_screen.dart';
import './phoneregister_screen.dart';


class HomeScreenPage  extends StatefulWidget {
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<HomeScreenPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 70,
              width: 180,

              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo_red.png'),
                      fit: BoxFit.fill
                  )
              ),
            ),
            Container(
              constraints: BoxConstraints(minWidth: 170, minHeight: 45),
              margin: const EdgeInsets.fromLTRB(20, 100, 20, 0),
                child: RaisedButton(

              child: Text('Sign In',
                  style: TextStyle(fontSize: 18)
              ),
              color: Color.fromRGBO(250, 250, 250, 1),
              textColor: Color.fromRGBO(168, 11, 3, 1),
              shape: RoundedRectangleBorder(side: BorderSide(
                  color: Color.fromRGBO(168, 11, 3, 1),
                  width: 1,
                  style: BorderStyle.solid
              ),borderRadius: BorderRadius.all(Radius.circular(25.0))),
              onPressed: () => _onButtonPressed(),
                ),
            ),
            Container(
              constraints: BoxConstraints(minWidth: 170, minHeight: 45),
              margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: RaisedButton(
              child: Text('Sign Up',
                  style: TextStyle(fontSize: 18)
              ),
              color: Color.fromRGBO(250, 250, 250, 1),
              textColor: Color.fromRGBO(168, 11, 3, 1),
              shape: RoundedRectangleBorder(side: BorderSide(
                  color: Color.fromRGBO(168, 11, 3, 1),
                  width: 1,
                  style: BorderStyle.solid
              ),borderRadius: BorderRadius.all(Radius.circular(25.0))),
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                  builder: (context) => PhoneRegisterScreen(),
                ));
              },
             ),
            ),
            new Container(
              constraints: BoxConstraints(minWidth: 250, minHeight: 45),
              margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
              child: RaisedButton(

                child: Text('Use As Guest',
                    style: TextStyle(fontSize: 18)
                ),
                color: Colors.white,
                textColor: Color.fromRGBO(168, 11, 3, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: (){},
              ),
            ),
          ]
        )
      )
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context){
      return Container(
        color: Color(0xFF737373),
        height: 450,
          child: Container(


          child: _buildBottomNavigationMenu(),
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(30),
              topRight: const Radius.circular(30),
            )
          ) ,
          ),
        );
    });
  }
  Column _buildBottomNavigationMenu() {
    return Column(
     children: <Widget>[
       Container(
         alignment: Alignment.center,
         margin: const EdgeInsets.only(top:25),
         padding: EdgeInsets.symmetric(horizontal:80, vertical: 15),
         decoration: BoxDecoration(
           // border: Border(bottom: BorderSide(color: Colors.grey[200]))
         ),

         child: TextField(
           keyboardType: TextInputType.phone,
           decoration: InputDecoration(
               focusedBorder: UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.black),
               ),
               hintText: "Phone Number",
               prefixIcon:Icon(Icons.phone),
               hintStyle: TextStyle(color: Colors.grey),
               border: UnderlineInputBorder(),
               labelStyle: TextStyle(
                   color: Colors.red
               )
           ),
         ),
        ),
       Container(
         alignment: Alignment.center,
         padding: EdgeInsets.symmetric(horizontal:80, vertical: 5),
         decoration: BoxDecoration(
           // border: Border(bottom: BorderSide(color: Colors.grey[200]))
         ),

         child: TextField(
           keyboardType: TextInputType.visiblePassword,
           obscureText: true,
           decoration: InputDecoration(
               focusedBorder: UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.black),
               ),
               hintText: "Password",
               prefixIcon:Icon(Icons.lock),
               hintStyle: TextStyle(color: Colors.grey),
               border: UnderlineInputBorder(),
               labelStyle: TextStyle(
                   color: Colors.red
               )
           ),
         ),
       ),
       new Container(
         constraints: BoxConstraints(minWidth: 170, minHeight: 45),
         margin: const EdgeInsets.fromLTRB(20, 15, 20, 20),
         child: RaisedButton(

           child: Text('Sign In',
               style: TextStyle(fontSize: 18),
           ),
           color: Color.fromRGBO(250, 250, 250, 1),
           textColor: Color.fromRGBO(168, 11, 3, 1),
           shape: RoundedRectangleBorder(side: BorderSide(
               color: Color.fromRGBO(168, 11, 3, 1),
               width: 1,
               style: BorderStyle.solid
           ),
               borderRadius: BorderRadius.all(Radius.circular(25.0))),
           onPressed: (){},
         ),
       ),
       TextButton(
         onPressed: (){
           Navigator.push(
             context,
             MaterialPageRoute(
                 builder: (context) => ForgotPassword())
           );

         },
         child: Text('Forgot Password ?',
         style: TextStyle(color: Colors.grey, fontSize: 16),
         ),

       )
     ],
    );
  }
}

