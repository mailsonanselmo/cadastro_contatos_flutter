import 'package:cadastro_contatos_flutter/provider/users_provider.dart';
import 'package:cadastro_contatos_flutter/widget/users_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserProvider usuarios = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: usuarios.count,
        itemBuilder: (ctx, i) => UserTile(usuarios.byIndex(i)),
      ),
    );
  }
}
