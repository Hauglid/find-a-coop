import 'package:coopx_design_system/hauglid_design_system.dart';
import 'package:find_a_coop/l10n/l10n.dart';
import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.findACoopAppBarTitle)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.lightbulb),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            elevation: 1,
            shadowColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  AButton(
                    title: 'I am a Coop button',
                    busy: true,
                  ),
                  Whitespace.height(PaddingSize.large),
                  AButton.outline(title: 'A am coop outline'),
                  Whitespace.height(PaddingSize.large),
                  Whitespace.height(PaddingSize.large),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
