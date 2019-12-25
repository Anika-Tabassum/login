



class JsonUser {
  List <JsonUser> user_account=[];
  final String email;
  final String password;
  final String password_confirmation;

  JsonUser({this.email,this.password,this.password_confirmation});

  factory JsonUser.fromJson(Map<String, dynamic> parsedJson) {
    Map json = parsedJson['user'];
    return JsonUser(
      email: json['email'] as String,
      password: json['password'] as String,
      password_confirmation: json['password_confirmation'] as String,
    );
  }
}