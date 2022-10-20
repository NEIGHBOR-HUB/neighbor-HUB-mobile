import 'package:meta/meta.dart';

class AccessToken {
  final String accessToken;
  final DateTime expiresAt;

  AccessToken({@required this.accessToken, @required this.expiresAt});
}
