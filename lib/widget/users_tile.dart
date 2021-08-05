import 'package:cadastro_contatos_flutter/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final CircleAvatar avatar;
    if (user.avatarUrl == null || user.avatarUrl.isEmpty) {
      avatar = CircleAvatar(child: Icon(Icons.person));
    } else {
      avatar = CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    }
    return ListTile(
      leading: avatar,
      title: Text(user.nome),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
              color: Colors.orange,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
