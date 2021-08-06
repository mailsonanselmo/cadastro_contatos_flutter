import 'package:cadastro_contatos_flutter/provider/users_provider.dart';
import 'package:cadastro_contatos_flutter/views/list_users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

     return MultiProvider(providers: [
      ChangeNotifierProvider(
      create: (ctx) => UserProvider(),
      )
     ],
      child: MaterialApp(
        title: 'CRUD FLUTTERR',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: UserList(),
      ),
    );
  }
}

