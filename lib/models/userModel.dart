import 'dart:typed_data';

class UserModel {
  String name;
  String email;
  String password;
  String mobileNumber;
  String profileimg;

  UserModel({
    this.name = '',
    this.email = '',
    this.password = '',
    this.mobileNumber = '',
    this.profileimg = '',
  });
}
