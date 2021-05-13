import 'dart:convert';

class OwnerModel {
  final String name = "Lucas de Mello Vieira";
  final String username = "lucassmelloo";
  final String photoUrl = "https://github.com/lucassmelloo.png";
  final int stars = 2;
  final int qtyRepo = 11;
  final int following = 8;

/*   OwnerModel({
    this.username,
    this.name,
    this.stars,
    this.photoUrl,
    this.qtyRepo,
    this.following,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'name': name,
      'stars': stars,
      'photoUrl': photoUrl,
      'qtyRepo': qtyRepo,
      'following': following,
    };
  }

  factory OwnerModel.fromMap(Map<String, dynamic> map) {
    return OwnerModel(
      username: map['username'],
      name: map['name'],
      stars: map['stars'],
      photoUrl: map['photoUrl'],
      qtyRepo: map['qtyRepo'],
      following: map['following'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OwnerModel.fromJson(String source) =>
      OwnerModel.fromMap(json.decode(source)); */
}
