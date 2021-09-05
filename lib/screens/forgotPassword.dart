import 'package:flutter/material.dart';

//import './otpConfirm_screen.dart';

class ForgotPassword extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 70,
                    width: 180,
                    margin: const EdgeInsets.fromLTRB(20, 60, 20, 80),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo_red.png'),
                            fit: BoxFit.fill
                        )
                    ),
                  ),

                  const Text('Forgot Your',
                      style: TextStyle( fontSize: 25, height: 1.5, )
                  ),
                  RichText(text: new TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      new TextSpan(text: 'Password', style: new TextStyle(fontSize: 25, color: Color.fromRGBO(168, 11, 3, 1))),
                    ],
                  )
                  ),

                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal:100, vertical: 20),
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
                  new Container(
                    constraints: BoxConstraints(minWidth: 170, minHeight: 45),
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 00),
                    child: RaisedButton(

                      child: Text('Send Request',
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
                      onPressed: (){},
                    ),
                  ),

                ]
            )
        )
    );
  }
}