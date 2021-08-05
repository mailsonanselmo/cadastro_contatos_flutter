import 'package:cadastro_contatos_flutter/widget/users_tile.dart';
import 'package:flutter/material.dart';
import 'package:cadastro_contatos_flutter/data/database_users.dart';


class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final usuarios = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
          title: const Text('Users'),
      ),

          body: ListView.builder(
            itemCount: usuarios.length,
            itemBuilder: (ctx, i) => UserTile(usuarios.values.elementAt(i)),
            ),
      
    );
  }
}
