import 'package:find_a_coop/features/stores/models/store.dart';
import 'package:find_a_coop/features/stores/presentation/store_info/cubit/store_cubit.dart';
import 'package:find_a_coop/features/stores/presentation/store_info/view/store_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreInfoPage extends StatelessWidget {
  const StoreInfoPage({required this.store, required this.chain, super.key});

  final String chain;
  final String store;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreCubit(),
      child: _StoreInfoPage(
        store: store,
        chain: chain,
      ),
    );
  }
}

class _StoreInfoPage extends StatefulWidget {
  const _StoreInfoPage({required this.store, required this.chain});

  final String chain;
  final String store;

  @override
  State<_StoreInfoPage> createState() => StoreInfoPageState();
}

class StoreInfoPageState extends State<_StoreInfoPage> {
  String storeName = '';

  @override
  void initState() {
    super.initState();
    final characterCount = widget.store.length;

    final name = widget.store.substring(0, characterCount - 5);
    final storeId = widget.store.substring(characterCount - 4, characterCount);

    context.read<StoreCubit>().getStore(
          storeId: storeId,
          storeName: name,
        );
  }

  void setStoreName(Store store) {
    setState(() {
      storeName = '${store.chain} ${store.name}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return StoreInfoView(controller: this);
  }
}
