import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:find_a_coop/features/stores/api/stores_api.dart';
import 'package:find_a_coop/features/stores/models/store.dart';

part 'stores_state.dart';

class StoresCubit extends Cubit<StoresState> {
  StoresCubit() : super(const StoresState(stores: []));

  Future<void> searchForStores({required String query}) async {
    final stores = await StoresApi.getStoreWithQuery(query: query);
    emit(StoresState(stores: stores));
  }

  Future<void> getAllStores() async {
    final stores = await StoresApi.getAllStores();
    emit(StoresState(stores: stores));
  }
}
