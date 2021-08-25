import 'package:flutter/material.dart';
import './phoneregister_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color.fromRGBO(168, 11, 3, 1), //change your color here
          ),
          title: Text(''),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 150,
                    margin: const EdgeInsets.fromLTRB(20, 00, 20, 70),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo_red.png'),
                            fit: BoxFit.fill
                        )
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
                          hintText: "Full Name",
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
                          hintText: "Email",
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
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 00),
                    child: RaisedButton(

                      child: Text('Register'),
                      color: Color.fromRGBO(168, 11, 3, 1),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context) => PhoneRegisterScreen(),
                        ));
                      },
                    ),
                  ),

                ]
            )
        )
    );
  }
}