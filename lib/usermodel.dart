//
import 'package:equmaintain/data_model.dart';

class DocModel {
  String? uid;
  String? name;
  String? email;
  List<DataModel>? data;

  DocModel({this.uid, this.name, this.email, this.data});

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'data': data?.map((item) => item.toMap()).toList(),
    };
  }

  factory DocModel.fromMap(Map<String, dynamic> map) {
    return DocModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
      data: (map['data'] as List<dynamic>?)
          ?.map((item) => DataModel.fromMap(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class UserModel {
  String? uid;
  String? name;
  String? email;
  String? assigndoctoruid;

  UserModel({this.uid, this.name, this.email, this.assigndoctoruid});

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'assigndoctoruid': assigndoctoruid,
    };
  }

  UserModel.fromMap(Map<String, dynamic> map) {
    uid = map['uid'];
    name = map['name'];
    email = map['email'];
    assigndoctoruid = map['assigndoctoruid'];
  }
}

