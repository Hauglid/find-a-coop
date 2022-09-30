import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:find_a_coop/api/shop_api.dart';
import 'package:find_a_coop/models/store.dart';

part 'shop_state.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit() : super(const StoreState(stores: []));

  Future<void> searchForStores({required String query}) async {
    final stores = await StoresApi.getStoreWithQuery(query: query);
    emit(StoreState(stores: stores));
  }

  Future<void> getAllStores() async {
    final stores = await StoresApi.getAllStores();
    emit(StoreState(stores: stores));
  }
}
