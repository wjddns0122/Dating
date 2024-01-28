class Auth {
  late String email;
  late String password;

  Auth({required this.email, required this.password});

  factory Auth.fromJson(Map<String, dynamic> json) {
    return Auth(email: json['email'], password: json['password']);
  }

  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}
