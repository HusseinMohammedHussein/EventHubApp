
import 'package:event_hub_app/core/database/cache_helper.dart';

import '../../../../core/services/service_locator.dart';

void onBoardingVisited() {
  sl<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}
