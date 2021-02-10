import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groomz/models/salon.dart';

class SalonService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static const collection = "salons";

  Future<List<Salon>> salonStream() {
    return _firestore.collection(collection).get().then((result) {
      result.docs.forEach((element) {
        List<Salon> salons = List();
        salons.add(Salon.fromDocumentSnapshot(element));
      });

      return salons;
    });
  }
}
