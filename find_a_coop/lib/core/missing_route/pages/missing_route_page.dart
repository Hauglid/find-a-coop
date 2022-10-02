import 'package:find_a_coop/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MissingRoutePage extends StatelessWidget {
  const MissingRoutePage({required this.error, super.key});
  final Exception? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('404', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              const Text(
                'Dette var visst en blindvei! Denne siden eksisterer ikke... \nVi har fått beskjed og undersøker feilen.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => context.goNamed(BaseRoutes.butikker),
                child: const Text(
                  'Go home',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
