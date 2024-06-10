import 'model.dart';
import 'data.dart';

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
