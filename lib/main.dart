import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
   return MaterialApp(
     title: 'La Mode',
     theme: ThemeData(
       colorScheme: ThemeData().colorScheme.copyWith(
         primary: Color.fromRGBO(168, 11, 3, 1),
       ),
     ),
   home: HomeScreenPage(),
   );
 }
}

