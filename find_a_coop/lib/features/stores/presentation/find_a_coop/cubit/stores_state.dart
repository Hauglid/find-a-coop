part of 'stores_cubit.dart';

class StoresState extends Equatable {
  const StoresState({required this.stores});

  final List<Store> stores;

  @override
  List<Store> get props => stores;
}
