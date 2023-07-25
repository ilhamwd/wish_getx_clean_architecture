import 'package:wish_gym/domain/repositories/login_repository.dart';
import 'package:wish_gym/domain/use_cases/use_case.dart';
import 'package:wish_gym/presentation/login/controllers/login_controller.dart';

class LoginUseCase extends UseCase<LoginController, LoginRepository> {
  LoginUseCase(super.controller, super.system);

  @override
  LoginRepository get repository => LoginRepository(system);
}
