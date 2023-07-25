import 'package:wish_gym/infrastructure/system.dart';

abstract class Repository {
  final System system;

  Repository(this.system);
}
