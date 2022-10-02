import 'package:find_a_coop/features/stores/models/store.dart';
import 'package:find_a_coop/features/stores/presentation/store/cubit/store_cubit.dart';
import 'package:find_a_coop/features/stores/presentation/store/view/widgets/store_information.dart';
import 'package:find_a_coop/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StorePage extends StatefulWidget {
  const StorePage({required this.store, required this.chain, super.key});

  final String store;
  final String chain;

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<StoreCubit, StoreState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (Store store) => StoreInformation(store: store),
          );
        },
      ),
    );
  }
}
