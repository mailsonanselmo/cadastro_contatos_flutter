import 'package:cadastro_contatos_flutter/views/list_users.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD FLUTTERR',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: UserList(),
    );
  }
}