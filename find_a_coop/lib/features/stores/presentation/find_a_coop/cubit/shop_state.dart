part of 'shop_cubit.dart';

class StoreState extends Equatable {
  const StoreState({required this.stores});

  final List<Store> stores;

  @override
  List<Store> get props => stores;
}
