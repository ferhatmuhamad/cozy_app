// ignore_for_file: public_member_api_docs, sort_constructors_first
class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchen;
  int numberOfBedroom;
  int numberOfCupboard;

  Space({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.city,
    required this.country,
    required this.rating,
    required this.address,
    required this.phone,
    required this.mapUrl,
    required this.photos,
    required this.numberOfKitchen,
    required this.numberOfBedroom,
    required this.numberOfCupboard,
  });
}
