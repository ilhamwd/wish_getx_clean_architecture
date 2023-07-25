import 'package:get/get.dart';
import 'package:wish_gym/domain/repositories/repository.dart';
import 'package:wish_gym/infrastructure/system.dart';

abstract class UseCase<T extends GetxController, Q extends Repository> {
  final T controller;
  final System system;

  Q get repository;

  UseCase(this.controller, this.system);
}
