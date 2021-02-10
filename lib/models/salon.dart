import 'package:groomz/models/offers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Salon {
  String name;
  String address;
  String image;
  double rating;
  double latitude;
  double longitude;
  bool isfeatured;
  String id;

  //getters
  //gettters
  String get _name => name;
  String get _image => image;
  String get _address => address;

  double get _rating => rating;
  double get _latitude => latitude;
  double get _longitude => longitude;
  bool get _isfeatured => isfeatured;
  String get _id => id;

  static const NAME = "name";
  static const IMAGE = "image";
  static const ADDRESS = "address";
  static const RATING = "rating";
  static const LOCATION = "location";

  static const ISFEATURED = "isfeatured";
  static const ID = "id";

  Salon(
      {this.address,
      this.image,
      this.name,
      this.rating,
      this.latitude,
      this.longitude,
      this.isfeatured,
      this.id});

  Salon.fromDocumentSnapshot(DocumentSnapshot snapshot) {
    id = snapshot.id;
    name = snapshot.data()[NAME];
    image = snapshot.data()[IMAGE];
    address = snapshot.data()[ADDRESS];
    latitude = snapshot.data()[LOCATION].latitude.toDouble();
    rating = snapshot.data()[RATING].toDouble();
  }
}

List<String> salonoption = ["About", "Services", "Gallery", "Reviews"];

List<Salon> salons = [
  Salon(
      name: "Siren Salon",
      image:
          "https://static.businessworld.in/article/article_extra_large_image/1589448910_mKTyMh_salon_mangalore4.jpg",
      address: "Borivali west",
      rating: 3.5,
      latitude: 19.43,
      longitude: 19.56,
      isfeatured: false,
      id: "jbkvksskvsbvsvs"),
  Salon(
      name: "Lookz Salon",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/b/b2/Hair_Salon_Stations.jpg",
      address: "Borivali west",
      rating: 3.5),
];
