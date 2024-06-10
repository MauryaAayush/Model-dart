# Json Parsing Example

## What is Json data :

JSON (JavaScript Object Notation) is a lightweight data interchange format that is easy for humans to read and write, and easy for machines to parse and generate. It is often used for transmitting data in web applications (e.g., sending data from a server to a client).


## Key Feature :
Data Structure:
* JSON data is represented as key-value pairs.
* It supports simple data types like strings, numbers, booleans, arrays, and objects (dictionaries).

Format:
* Objects are enclosed in curly braces {}.
* Arrays are enclosed in square brackets [].
* Key-value pairs within objects are separated by commas, and each key is followed by a colon :.




## Data :

```dart

  List albums = [
  {"userId": 1, "id": 1, "title": "quidem molestiae enim"},
  {"userId": 1, "id": 2, "title": "sunt qui excepturi placeat culpa"},
  {"userId": 1, "id": 3, "title": "omnis laborum odio"},
  {"userId": 1, "id": 4, "title": "non esse culpa molestiae omnis sed optio"},
  {"userId": 1, "id": 5, "title": "eaque aut omnis a"},
  {"userId": 1, "id": 6, "title": "natus impedit quibusdam illo est"},
  {"userId": 1, "id": 7, "title": "quibusdam autem aliquid et et quia"},
  {"userId": 1, "id": 8, "title": "qui fuga est a eum"},
  {"userId": 1, "id": 9, "title": "saepe unde necessitatibus rem"},
  {"userId": 1, "id": 10, "title": "distinctio laborum qui"},
];

```

## Model Class: 

```dart
class Albums {
  int? userId, id;
  String? title;

  Albums({this.id, this.title, this.userId});

  factory Albums.fromJson(Map json) {
    return Albums(id: json['id'], title: json['title'], userId: json['userId']);
  }
}

```

## Main.dart : 

```dart

void main() {
  
  List<Albums> albumsList =
      albums.map((data) => Albums.fromJson(data)).toList();

  // Print data from the list
  for (var album in albumsList) {
    print(
        'Album ID: ${album.id}, Title: ${album.title}, User ID: ${album.userId}');
  }
}

```


