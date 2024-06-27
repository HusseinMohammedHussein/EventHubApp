import 'package:event_hub_app/core/database/cache_helper.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
void setupServiceLocator() {
  sl.registerSingleton<CacheHelper>(CacheHelper());
}