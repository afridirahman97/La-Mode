import 'package:flutter/material.dart';


import './register_screen.dart';


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
              height: 60,
              width: 150,

              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo_red.png'),
                      fit: BoxFit.fill
                  )
              ),
            ),
            Container(
              constraints: BoxConstraints(minWidth: 150),
              margin: const EdgeInsets.fromLTRB(20, 100, 20, 0),
                child: RaisedButton(

              child: Text('Sign In'),
              color: Color.fromRGBO(168, 11, 3, 1),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () => _onButtonPressed(),
                ),
            ),
            ButtonTheme(
            minWidth: 150.0,
            child: RaisedButton(
              child: Text('Sign Up'),
              color: Color.fromRGBO(168, 11, 3, 1),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                ));
              },
             ),
            ),
            new Container(
              constraints: BoxConstraints(minWidth: 150),
              margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
              child: RaisedButton(

                child: Text('Use As Guest'),
                color: Color.fromRGBO(168, 11, 3, 1),
                textColor: Colors.white,
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
        height: 350,
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
         margin: const EdgeInsets.only(top:20),
         padding: EdgeInsets.symmetric(horizontal:80, vertical: 10),
         decoration: BoxDecoration(
           // border: Border(bottom: BorderSide(color: Colors.grey[200]))
         ),
         child: TextField(

           decoration: InputDecoration(
               focusedBorder: UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.black),
               ),
               hintText: "Phone Number",
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

           decoration: InputDecoration(
               focusedBorder: UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.black),
               ),
               hintText: "Password",
               hintStyle: TextStyle(color: Colors.grey),
               border: UnderlineInputBorder(),
               labelStyle: TextStyle(
                   color: Colors.red
               )
           ),
         ),
       ),
       new Container(
         constraints: BoxConstraints(minWidth: 150),
         margin: const EdgeInsets.fromLTRB(20, 15, 20, 20),
         child: RaisedButton(

           child: Text('Sign In'),
           color: Color.fromRGBO(168, 11, 3, 1),
           textColor: Colors.white,
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.all(Radius.circular(20.0))),
           onPressed: (){},
         ),
       ),
       Container(
         child: Text('Forgot Password ?',
         style: TextStyle(color: Colors.grey, fontSize: 15),
         )
       )
     ],
    );
  }
}

