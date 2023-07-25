import 'package:wish_gym/domain/models/user_model.dart';
import 'package:wish_gym/domain/repositories/repository.dart';

class LoginRepository extends Repository {
  LoginRepository(super.system);

  Future<UserModel> getUserData() async {
    // Retrieve data from API with DIO or http
    return UserModel.fromJson({});
  }
}
