import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/features/auth/presentation/providers/auth_providers.dart';

class AuthRegisterScreen extends ConsumerStatefulWidget {
  const AuthRegisterScreen({super.key});

  @override
  ConsumerState<AuthRegisterScreen> createState() =>
      _AuthRegisterScreenState();
}

class _AuthRegisterScreenState extends ConsumerState<AuthRegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLoading = ref.watch(isLoadingProvider);
    final error = ref.watch(authErrorProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Регистрация')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: AppSpacing.xxl),
              Text(
                'Создать аккаунт',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                'Для синхронизации прогресса между устройствами',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: AppSpacing.xl),

              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Пароль',
                  prefixIcon: Icon(Icons.lock_outlined),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Подтвердите пароль',
                  prefixIcon: Icon(Icons.lock_outlined),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              if (error != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.lg),
                  child: Text(
                    error,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

              FilledButton(
                onPressed: isLoading ? null : _register,
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                ),
                child: isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Зарегистрироваться'),
              ),
              const SizedBox(height: AppSpacing.lg),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Уже есть аккаунт?',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.push(AppRoutes.authLogin),
                    child: const Text('Войти'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _register() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final confirm = _confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ref.read(authErrorProvider.notifier).state = 'Заполните все поля';
      return;
    }
    if (password != confirm) {
      ref.read(authErrorProvider.notifier).state = 'Пароли не совпадают';
      return;
    }
    if (password.length < 6) {
      ref.read(authErrorProvider.notifier).state =
          'Пароль должен быть не менее 6 символов';
      return;
    }

    // TODO: Call auth repository signUpWithEmail
  }
}
