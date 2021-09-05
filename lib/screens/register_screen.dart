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

        body: SingleChildScrollView(

            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 70,
                    width: 180,
                    margin: const EdgeInsets.fromLTRB(10, 60, 20, 70),
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
                          prefixIcon: Icon(Icons.account_circle),
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
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
                    margin: const EdgeInsets.fromLTRB(20, 40, 20, 00),
                    child: RaisedButton(

                      child: Text('Register',
                          style: TextStyle(fontSize: 18)
                      ),
                      color: Color.fromRGBO(250, 250, 250, 1),
                      textColor: Color.fromRGBO(168, 11, 3, 1),
                      shape: RoundedRectangleBorder(side: BorderSide(
                          color: Color.fromRGBO(168, 11, 3, 1),
                          width: 1,
                          style: BorderStyle.solid
                      ),
                          borderRadius: BorderRadius.all(Radius.circular(25.0))),
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