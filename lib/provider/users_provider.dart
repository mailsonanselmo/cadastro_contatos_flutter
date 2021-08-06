

import 'package:cadastro_contatos_flutter/data/database_users.dart';
import 'package:cadastro_contatos_flutter/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  final Map<String, User> _itens = {...DUMMY_USERS};

  List<User> get all {
    return [..._itens.values];
  }

  int get count {
    return _itens.length;
  }

  User byIndex(int i) {
    return _itens.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) return;

    notifyListeners();
  }
}
