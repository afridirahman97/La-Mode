import 'package:flutter/material.dart';

import './otpConfirm_screen.dart';

class PhoneRegisterScreen extends StatelessWidget {
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
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 80),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo_red.png'),
                            fit: BoxFit.fill
                        )
                    ),
                  ),

                  const Text('Register With',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, height: 1.5, )
                  ),
                   RichText(text: new TextSpan(
                     // Note: Styles for TextSpans must be explicitly defined.
                     // Child text spans will inherit styles from parent
                     style: new TextStyle(
                       fontSize: 14.0,
                       color: Colors.black,
                     ),
                     children: <TextSpan>[
                       new TextSpan(text: 'Your',style: new TextStyle(fontStyle: FontStyle.italic, fontSize: 25, height: 1.5)),
                       new TextSpan(text: ' Phone', style: new TextStyle(fontStyle: FontStyle.italic, fontSize: 25, color: Color.fromRGBO(168, 11, 3, 1))),
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
                  new Container(
                    constraints: BoxConstraints(minWidth: 150),
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 00),
                    child: RaisedButton(

                      child: Text('Send OTP'),
                      color: Color.fromRGBO(168, 11, 3, 1),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context) => OtpConfirm(),
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