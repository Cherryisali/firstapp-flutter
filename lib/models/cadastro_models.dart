class User {
  String? name;
  String? mail;
  String? password;
  int? telefone;
  bool? keepOn;

  User({this.name, this.mail, this.password, this.telefone, this.keepOn});

  User.fromJson(Map<String?, dynamic> json) {
    name = json['name'];
    mail = json['mail'];
    password = json['password'];
    telefone = json['telefone'];
    keepOn = json['keepOn'];
  }

  Map<String?, dynamic> toJson() {
    final Map<String?, dynamic> data = new Map<String?, dynamic>();
    data['name'] = this.name;
    data['mail'] = this.mail;
    data['password'] = this.password;
    data['telefone'] = this.telefone;
    data['keepOn'] = this.keepOn;
    return data;
  }
  // String toString(){
  //   return "Name: " + this.name +
  //   "\nE-mail: " + this.mail + 
  //   "\nSenha: " + this.password +
  //   "\nTelefone:  " + this.telefone ;
  // }
}