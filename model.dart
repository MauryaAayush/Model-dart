import 'data.dart';

class DataModel {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  DataModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  factory DataModel.fromJson(Map json) {
    return DataModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      address:
          json['address'] != null ? Address.fromJson(json['address']) : null,
      company:
          json['company'] != null ? Company.fromJson(json['company']) : null,
      phone: json['phone'],
      username: json['username'],
      website: json['website'],
    );
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipCode;
  Geo? geo;

  Address({
    this.street,
    this.suite,
    this.city,
    this.zipCode,
    this.geo,
  });

  factory Address.fromJson(Map json) {
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipCode: json['zipcode'],
      geo: json['geo'] != null ? Geo.fromJson(json['geo']) : null,
    );
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  factory Geo.fromJson(Map json) {
    return Geo(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromJson(Map json) {
    return Company(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }
}

void main() {
  List<DataModel> dataModels = info.map((i) => DataModel.fromJson(i)).toList();

  dataModels.forEach((dataModel) {
    print('______________________________');
    print('______________________________');
    print('id: ${dataModel.id}');
    print('name: ${dataModel.name}');
    print('username: ${dataModel.username}');
    print('email: ${dataModel.email}');
    print('address -> ');

    if (dataModel.address != null) {
      print('street: ${dataModel.address!.street}');
      print('suite: ${dataModel.address!.suite}');
      print('city: ${dataModel.address!.city}');
      print('zipcode: ${dataModel.address!.zipCode}');
      print('geo ->');

      if (dataModel.address!.geo != null) {
        print('lat: ${dataModel.address!.geo!.lat}');
        print('lng: ${dataModel.address!.geo!.lng}');
      }
    }

    print('phone: ${dataModel.phone}');
    print('website: ${dataModel.website}');
    print('company ->');

    if (dataModel.company != null) {
      print('name: ${dataModel.company!.name}');
      print('catchPhrase: ${dataModel.company!.catchPhrase}');
      print('bs: ${dataModel.company!.bs}');
    }
  });
}
