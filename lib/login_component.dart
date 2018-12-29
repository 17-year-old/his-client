import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'AuthService.dart';

@Component(
  selector: 'login',
  templateUrl: 'login_component.html',
  styleUrls: ['login_component.css'],
  providers: [ClassProvider(AuthService)],
  directives: [
    coreDirectives,
    materialInputDirectives,
    MaterialButtonComponent,
  ],
)
class LoginComponent {
  AuthService _authService;
  String username;
  String password;
  String error;

  LoginComponent(this._authService);

  void login() {
    this._authService.login(username, password);
  }
}
