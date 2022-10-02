import 'package:find_a_coop/features/stores/presentation/find_a_coop/cubit/stores_cubit.dart';
import 'package:find_a_coop/features/stores/presentation/find_a_coop/view/find_a_coop_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindACoopPage extends StatelessWidget {
  const FindACoopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoresCubit(),
      child: const _FindACoopPage(),
    );
  }
}

class _FindACoopPage extends StatefulWidget {
  const _FindACoopPage();

  @override
  State<_FindACoopPage> createState() => FindACoopPageState();
}

class FindACoopPageState extends State<_FindACoopPage> {
  TextEditingController searchTextEditingController = TextEditingController();
  bool searchIsEmpty = true;

  @override
  void initState() {
    super.initState();
    searchTextEditingController.addListener(updateSearchState);
    context.read<StoresCubit>().getAllStores();
  }

  @override
  void dispose() {
    searchTextEditingController
      ..removeListener(updateSearchState)
      ..dispose();
    super.dispose();
  }

  void updateSearchState() {
    final query = searchTextEditingController.value.text;
    setState(() {
      searchIsEmpty = query.isEmpty;
    });
    context.read<StoresCubit>().searchForStores(query: query);
  }

  @override
  Widget build(BuildContext context) {
    return FindACoopView(controller: this);
  }
}
