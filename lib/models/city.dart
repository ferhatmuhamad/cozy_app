// ignore_for_file: public_member_api_docs, sort_constructors_first
class City {
  int id;
  String name;
  String imageUrl;
  bool isPopuler;

  City({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.isPopuler = false,
  });
}
