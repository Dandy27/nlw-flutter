import 'dart:convert';

class UserModel {
  final String name;
  final String? phothoUrl;

  UserModel({required this.name, required this.phothoUrl});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phothoUrl': phothoUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      phothoUrl: map['phothoUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String user) =>
      UserModel.fromMap(json.decode(user));
}
