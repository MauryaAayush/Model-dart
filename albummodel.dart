

class Albums {
  int? userId, id;
  String? title;

  Albums({this.id, this.title, this.userId});

  factory Albums.fromJson(Map json) {
    return Albums(id: json['id'], title: json['title'], userId: json['userId']);
  }
}

