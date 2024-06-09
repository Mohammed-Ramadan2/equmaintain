class DocModel {
  String? uid;
  String? name;
  String? email;

  DocModel({this.uid, this.name, this.email});

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
    };
  }

  DocModel.fromMap(Map<String, dynamic> map) {
    uid = map['uid'];
    name = map['name'];
    email = map['email'];
  }
}
class UserModel {
  String? uid;
  String? name;
  String? email;

  UserModel({this.uid, this.name, this.email});

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
    };
  }

  UserModel.fromMap(Map<String, dynamic> map) {
    uid = map['uid'];
    name = map['name'];
    email = map['email'];
  }
}

