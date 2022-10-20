import 'package:meta/meta.dart';

class SingUpParams {
  
  final String email;
  final String password;
  final String name;

  SingUpParams({
      @required this.email,
      @required this.password,
      @required this.name
      });
}

class SingedUser extends SingUpParams{
  final int id;
  final String email;
  final String password;
  final String name;

  SingedUser({@required this.id, @required this.email, @required this.password, @required this.name});
}
