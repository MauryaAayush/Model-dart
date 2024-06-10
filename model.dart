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

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipCode;

  Geo? geo;

  Address({this.city, this.geo, this.street, this.suite, this.zipCode});

  factory Address.fromJson(Map json) {
    return Address(
        city: json['city'],
        geo: json['geo'],
        street: json['street'],
        suite: json['json'],
        zipCode: json['zipcode']);
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  factory Geo.fromJson(Map json) {
    return Geo(lat: json['lat'], lng: json['lng']);
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({this.name, this.bs, this.catchPhrase});

  factory Company.fromJson(Map json) {
    return Company(
        name: json['name'], catchPhrase: json['catchPhrase'], bs: json['bs']);
  }
}

void main() {
  DataModel dataModel;

  for (int i = 0; i < info.length; i++) {
    dataModel = DataModel.fromJson(info[i]);

    print('-----------------------------');
    print('id: ${dataModel.id}');
    print('name: ${dataModel.name}');
    print('username: ${dataModel.username}');
    print('email: ${dataModel.email}');
    print('address:');
    print('\tstreet: ' + '${dataModel.address!.street}');
    print('\tsuite: ' + '${dataModel.address!.suite}');
    print('\tcity: ' + '${dataModel.address!.city}');
    print('\tzipcode: ' + '${dataModel.address!.zipCode}');
    print('\tgeo:');
    print('\t\tlat: ' + '${dataModel.address!.geo!.lat}');
    print('\t\tlng: ' + '${dataModel.address!.geo!.lng}');
    print('phone: ${dataModel.phone}');
    print('website: ${dataModel.website}');
    print('company:');
    print('\tname: ' + '${dataModel.company!.name}');
    print('\tcatchPhrase: ' + '${dataModel.company!.catchPhrase}');
    print('\tbs: ' + '${dataModel.company!.bs}');
  }
}
