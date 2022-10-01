import 'package:coopx_design_system/hauglid_design_system.dart';
import 'package:find_a_coop/features/stores/presentation/find_a_coop/cubit/shop_cubit.dart';
import 'package:find_a_coop/features/stores/presentation/find_a_coop/view/widgets/shop_list.dart';
import 'package:find_a_coop/features/stores/stores.dart';
import 'package:find_a_coop/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindACoopView extends StatelessWidget {
  const FindACoopView({
    super.key,
    required this.controller,
  });

  final FindACoopPageState controller;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.findACoopAppBarTitle)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.lightbulb),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(PaddingSize.large),
            child: AInputField(
              controller: controller.searchTextEditingController,
              leading: const Icon(Icons.search),
              trailing: controller.searchIsEmpty ? null : const Icon(Icons.clear),
              trailingTapped: controller.searchTextEditingController.clear,
            ),
          ),
          BlocBuilder<StoreCubit, StoreState>(
            builder: (context, state) {
              return Expanded(child: StoreList(shops: state.stores));
            },
          ),
        ],
      ),
    );
  }
}
