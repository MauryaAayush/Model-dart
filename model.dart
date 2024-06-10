class DataModel {
  int? id;
  String? name;
  String? username;
  String? email;

  Address? address;

  String? phone;
  String? website;

  Company? company;

  DataModel(
      {this.id,
      this.address,
      this.company,
      this.email,
      this.name,
      this.phone,
      this.username,
      this.website});

  factory DataModel.fromJson(Map json) {
    return DataModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        address: json['address'],
        company: json['company'],
        phone: json['phone'],
        username: json['username'],
        website: json['website']);
  }
}

class Address {}

class Geo {}

class Company {}
