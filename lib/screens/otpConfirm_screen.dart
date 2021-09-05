import 'package:flutter/material.dart';

import './register_screen.dart';

class OtpConfirm extends StatelessWidget {
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
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                    child: Column(
                    children: [
                      OtpForm(),
                      ],
                     ),
                    ),
                  ),

                      TextButton(
                        onPressed: (){},
                        child: Text('Re-Send OTP',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                  new Container(
                    constraints: BoxConstraints(minWidth: 170, minHeight: 45),
                    margin: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                    child: RaisedButton(

                      child: Text('Confirm',
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
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
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

    class OtpForm extends StatefulWidget {
      @override
      _OtpFormState createState() => _OtpFormState();

    }

    class _OtpFormState extends State<OtpForm> {
      @override
      Widget build(BuildContext context) {
        return Form(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 80,
                child: TextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color.fromRGBO(168, 11, 3, 1),

                      )
                    )
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                width: 80,
                child: TextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color.fromRGBO(168, 11, 3, 1),
                          )
                      )
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                width: 80,
                child: TextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color.fromRGBO(168, 11, 3, 1),
                          )
                      )
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                width: 80,
                child: TextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color.fromRGBO(168, 11, 3, 1),
                          )
                      )
                  ),
                  onChanged: (value) {},
                ),
              ),
            ],
          )
        );



      }
    }

