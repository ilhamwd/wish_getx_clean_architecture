class UserModel {
  late String name, username, profilePhoto;

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    profilePhoto = json['profiel_photo'];
  }
}
