import 'package:http/http.dart';
import 'dart:html';
import 'package:angular_router/angular_router.dart';
import 'package:his_client/route_paths.dart';

class AuthService {
  static const _token_name = 'jwttoken';
  Router _router;
  Client _http;

  AuthService(this._http, this._router);

  void login(String username, String password) async {
    print("here");
    final response = this._http.post(RoutePaths.login,
        body: '{"username":"$username", "password":"$password"}');
    if (response.statusCode == 200) {
      String token = response.headers["Authorization"];
      window.localStorage[_token_name] = token;
      _router.navigate('home');
    }
  }

  void logout() {
    window.localStorage.remove(_token_name);
    _router.navigate('logout');
  }

  bool loggedIn() {
    return (window.localStorage[_token_name] != null);
  }
}
