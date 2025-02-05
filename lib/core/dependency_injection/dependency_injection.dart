import 'package:get_it/get_it.dart';

import 'cubit_injection.dart';
import 'repository_injection.dart';
import 'service_injection.dart';
import 'usecase_injection.dart';

void setupDependencyInjection() {
  setupCubitInjection();
  setupServiceInjection();
  setupRepositoryInjection();
  setupUsecaseInjection();
}

final sl = GetIt.instance;
