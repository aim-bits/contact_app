
class Contact {
  final String name;
  final String number;
  final String urlImage;

  Contact(
      {
        required this.name,
        required this.number,
        required this.urlImage});

  factory Contact.fromJson(Map<String, dynamic> json) =>
      Contact(
          name: json['name'],
          number: json['number'],
          urlImage: json['urlImage']
      );

  Map<String, dynamic> toJson() => {
    'name': name,
    'number': number,
    'urlImage': urlImage,
  };
}

