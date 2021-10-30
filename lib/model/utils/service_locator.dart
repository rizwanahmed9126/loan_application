import 'package:get_it/get_it.dart';
import '../services/navigation_service.dart';



GetIt locator = GetIt.instance;

void setupLocator() {
  try {
    //locator.registerSingleton(StorageService());
    locator.registerSingleton(NavigationService());
    //locator.registerSingleton(UtilService());
    //locator.registerSingleton(HttpService());
    // locator.registerSingleton(FirebaseService());
  } catch (err) {
    print(err);
  }
}
