import 'package:find_a_coop/features/stores/models/store.dart';
import 'package:find_a_coop/features/stores/presentation/store_info/cubit/store_cubit.dart';
import 'package:find_a_coop/features/stores/presentation/store_info/view/store_info_page.dart';
import 'package:find_a_coop/features/stores/presentation/store_info/view/widgets/store_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreInfoView extends StatelessWidget {
  const StoreInfoView({
    super.key,
    required this.controller,
  });
  final StoreInfoPageState controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.storeName),
      ),
      body: BlocConsumer<StoreCubit, StoreState>(
        listener: (context, state) {
          state.whenOrNull(success: controller.setStoreName);
        },
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
