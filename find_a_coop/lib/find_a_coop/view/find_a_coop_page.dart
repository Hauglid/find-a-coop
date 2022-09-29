import 'package:find_a_coop/l10n/l10n.dart';
import 'package:flutter/material.dart';

class FindACoopPage extends StatelessWidget {
  const FindACoopPage({super.key});

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
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('I am a text button'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('I am elevated'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('I am a button'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
