class Login {
  String? mail;
  String? password;
  bool? keepOn;

  Login({this.mail, this.password, this.keepOn});

  Login.fromJson(Map<String?, dynamic> json) {
    mail = json['mail'];
    password = json['password'];
    keepOn = json['keepOn'];
  }

  Map<String?, dynamic> toJson() {
    final Map<String?, dynamic> data = new Map<String?, dynamic>();
    data['mail'] = this.mail;
    data['password'] = this.password;
    data['keepOn'] = this.keepOn;
    return data;
  }
}