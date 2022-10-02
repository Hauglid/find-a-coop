import 'package:bloc/bloc.dart';
import 'package:find_a_coop/features/stores/api/stores_api.dart';
import 'package:find_a_coop/features/stores/models/store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_state.dart';
part 'store_cubit.freezed.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit() : super(const StoreState.initial());

  Future<void> getStore({required String storeId, required String storeName}) async {
    final Store store = await StoresApi.getStore(storeId: storeId, storeName: storeName);
    emit(StoreState.success(store));
  }
}
