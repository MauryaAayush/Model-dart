import 'model.dart';
import 'data.dart';

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
