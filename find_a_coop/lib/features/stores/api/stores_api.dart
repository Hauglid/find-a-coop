import 'package:find_a_coop/features/stores/models/store.dart';
import 'package:find_a_coop/features/stores/models/stores_info.dart';
import 'package:find_a_coop/services/http_service.dart';
import 'package:find_a_coop/utils/log_utils.dart';
import 'package:geolocator/geolocator.dart';

class StoresApi {
  static final HttpService _service = HttpService();
  static const String baseUrl = 'coop.no';

  static Future<List<Store>> getAllStores() async {
    return getStoreWithQuery(query: '');
  }

  static Future<Store> getStore({required String storeId, required String storeName}) async {
    final stores = await getStoreWithQuery(query: storeName);
    final store = stores.firstWhere(
      (element) => element.storeId == storeId,
      orElse: () => throw StoreNotFoundException(),
    );
    return store;
  }

  static Future<List<Store>> getStoreWithQuery({required String query}) async {
    final Map<String, String> locationQueryParameters = {};

    final position = await getPosition();
    if (position != null) {
      locationQueryParameters.addAll({
        'locationLat': position.latitude.toString(),
        'locationLon': position.longitude.toString(),
      });
    }

    final response = await _service.get(
      baseUrl: baseUrl,
      endpoint: StoreEndpoints.searchStores,
      extraQueryParameters: {'searchInput': query, ...locationQueryParameters},
    );
    if (response.statusCode == 200) {
      final jsonData = jsonDecodeUtf8(response.bodyBytes) as Map<String, dynamic>;
      final storesInfo = StoresInfo.fromJson(jsonData);
      return storesInfo.stores;
    } else {
      return [];
    }
  }

  static Future<Position?> getPosition() async {
    // Should probably check permission instead of try/catch
    try {
      final Position position = await Geolocator.getCurrentPosition();
      return position;
    } catch (e, s) {
      logError(e.toString(), stackTrace: s);
      return null;
    }
  }
}

mixin StoreEndpoints {
  static String searchStores = '/StoreService/SearchStores';
  static String store(String storeId) => '/StoreService/SearchStores/$storeId';
}

class StoreNotFoundException implements Exception {}
