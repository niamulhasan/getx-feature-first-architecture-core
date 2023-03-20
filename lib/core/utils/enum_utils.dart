abstract class EnumUtils {
  static String enumToString(Object o) => o.toString().split('.').last;
}