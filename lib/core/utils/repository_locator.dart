
import 'package:get/get.dart';

abstract class RepositoryLocator {
  static T? locate<T>() {
    try {
      return Get.find<T>();
    }
    catch (e) {
      print("Repository not found: $T");
      return null;
    }
  }
}