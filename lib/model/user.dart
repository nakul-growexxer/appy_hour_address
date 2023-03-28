class User {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  bool? isMobileVerified;
  bool? isEmailVerified;
  String? phoneNumber;
  String? profileUrl;
  int? role;
  String? dateOfBirth;
  String? token;

  User(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.isMobileVerified,
      this.isEmailVerified,
      this.phoneNumber,
      this.profileUrl,
      this.role,
      this.dateOfBirth,
      this.token});

  User.fromJson(Map json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    isMobileVerified = json['is_mobile_verified'];
    isEmailVerified = json['is_email_verified'];
    phoneNumber = json['phone_number'];
    profileUrl = json['profile_url'];
    role = json['role'];
    dateOfBirth = json['date_of_birth'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['is_mobile_verified'] = isMobileVerified;
    data['is_email_verified'] = isEmailVerified;
    data['phone_number'] = phoneNumber;
    data['profile_url'] = profileUrl;
    data['role'] = role;
    data['date_of_birth'] = dateOfBirth;
    data['token'] = token;
    return data;
  }
}
