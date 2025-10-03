import 'package:cinebox/ui/core/themes/assets.gen.dart';
import 'package:cinebox/ui/core/widgets/loader_messages.dart';
import 'package:cinebox/ui/splash/commands/check_user_logged_command.dart';
import 'package:cinebox/ui/splash/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> with LoaderAndMessage {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(splashViewModelProvider).checkLoginAndRedirect();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(checkUserLoggedCommandProvider, (previous, next) {
      next.whenOrNull(
        data: (data) {
          final route = switch (data) {
            true => '/home',
            false => '/login',
            _ => '',
          };

          if (route.isNotEmpty && context.mounted) {
            // Remover todas as rotas e navegar para a rota desejada
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil(route, (route) => false);
          }
        },
        error: (error, stackTrace) {
          if (context.mounted) {
            showErrorSnackbar('Erro ao verificar login: $error');
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/login', (route) => false);
          }
        },
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Assets.images.bgLogin.image(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withAlpha(100),
                  Colors.black.withAlpha(240),
                ],
              ),
            ),
          ),
          Center(
            child: Assets.images.logo.image(
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
