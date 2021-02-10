import 'package:get/get.dart';
import 'package:groomz/Service/salon_service.dart';
import 'package:groomz/models/salon.dart';

class SalonController extends GetxController {
  var salonList = List<Salon>().obs;

  @override
  void onInit() {
    super.onInit();
    SalonService().salonStream();
  }
}
