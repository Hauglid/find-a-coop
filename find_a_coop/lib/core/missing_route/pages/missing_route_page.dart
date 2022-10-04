import 'package:coopx_design_system/coopx_design_system.dart';
import 'package:find_a_coop/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MissingRoutePage extends StatelessWidget {
  const MissingRoutePage({required this.error, super.key});
  final Exception? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(PaddingSize.large),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AText.headingThree('404'),
              const SizedBox(height: PaddingSize.large),
              AText.body(
                'Dette var visst en blindvei! Denne siden eksisterer ikke... \nVi har fått beskjed og undersøker feilen.',
              ),
              const SizedBox(height: PaddingSize.large),
              AButton(
                title: 'Go home',
                onTap: () => context.goNamed(BaseRoutes.butikker),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
