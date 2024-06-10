import 'albumdata.dart';
import 'albummodel.dart';

void main() {
  
  List<Albums> albumsList =
      albums.map((data) => Albums.fromJson(data)).toList();

  // Print data from the list
  for (var album in albumsList) {
    print(
        'Album ID: ${album.id}, Title: ${album.title}, User ID: ${album.userId}');
  }
}
