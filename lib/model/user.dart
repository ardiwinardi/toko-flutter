class User {
  final String name;
  final String email;
  final String address;
  final String? token;

  User({
    required this.name,
    required this.email,
    required this.address,
    this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      address: json['address'],
      token: json['token'],
    );
  }
}
