import 'dart:async';
import '../../model/user.dart';
import '../../services/api.dart';

class AuthVm {
  AuthVm({
    Api? api,
  }) {
    this.api = api ?? Api();
  }
  late Api api;
  Stream<User?> get user => _streamController.stream.asBroadcastStream();

  static final _streamController = StreamController<User?>();

  logout() {
    _streamController.close();
  }

  Future login(String userName, String password) async {
    // _streamController.sink.add(User());
  }
}
