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
}

class Address {}

class Geo {}

class Company {}
