import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wish_gym/config.dart';

class System {
  final env = ConfigEnvironments.getEnvironments();
  late final SharedPreferences pref;
  late final Dio dio;

  Future<System> init() async {
    // Do your initialization scripts
    pref = await SharedPreferences.getInstance();
    dio = Dio(BaseOptions(baseUrl: env.baseUrl));

    return this;
  }
}
