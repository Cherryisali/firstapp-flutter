class NovoContato {
  String? name;
  String? sobrenome;
  int? telefone;

  NovoContato({this.name, this.sobrenome, this.telefone});

  NovoContato.fromJson(Map<String?, dynamic> json) {
    name = json['name'];
    sobrenome = json['sobrenome'];
    telefone = json['telefone'];
  }

  Map<String?, dynamic> toJson() {
    final Map<String?, dynamic> data = new Map<String?, dynamic>();
    data['name'] = this.name;
    data['sobrenome'] = this.sobrenome;
    data['telefone'] = this.telefone;
    return data;
  }
}