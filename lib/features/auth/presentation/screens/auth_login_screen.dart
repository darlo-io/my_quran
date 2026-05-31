import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/features/auth/presentation/providers/auth_providers.dart';

class AuthLoginScreen extends ConsumerStatefulWidget {
  const AuthLoginScreen({super.key});

  @override
  ConsumerState<AuthLoginScreen> createState() => _AuthLoginScreenState();
}

class _AuthLoginScreenState extends ConsumerState<AuthLoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(isLoadingProvider);
    final error = ref.watch(authErrorProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Вход')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // App logo / title
              const SizedBox(height: AppSpacing.xxl),
              Icon(
                Icons.menu_book,
                size: 64,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: AppSpacing.lg),
              Text(
                'Quran App',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: AppSpacing.xxxl),

              // Email field
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                onChanged: (_) =>
                    ref.read(authErrorProvider.notifier).state = null,
              ),
              const SizedBox(height: AppSpacing.lg),

              // Password field
              TextField(
                controller: _passwordController,
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Пароль',
                  prefixIcon: Icon(Icons.lock_outlined),
                ),
                onChanged: (_) =>
                    ref.read(authErrorProvider.notifier).state = null,
              ),
              const SizedBox(height: AppSpacing.sm),

              // Forgot password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () =>
                      context.push(AppRoutes.authForgotPassword),
                  child: const Text('Забыли пароль?'),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Error message
              if (error != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.lg),
                  child: Text(
                    error,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),

              // Login button
              FilledButton(
                onPressed: isLoading ? null : () => _signIn(),
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                ),
                child: isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Войти'),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Register button
              OutlinedButton(
                onPressed: () => context.push(AppRoutes.authRegister),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                ),
                child: const Text('Создать аккаунт'),
              ),
              const SizedBox(height: AppSpacing.xl),

              // Divider
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                    child: Text(
                      'или',
                      style:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant,
                              ),
                    ),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: AppSpacing.lg),

              // Google sign in
              OutlinedButton.icon(
                onPressed: () => _signInWithGoogle(),
                icon: const Icon(Icons.g_mobiledata, size: 24),
                label: const Text('Войти через Google'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                ),
              ),

              // Skip for now
              const SizedBox(height: AppSpacing.xl),
              TextButton(
                onPressed: () => context.go(AppRoutes.home),
                child: Text(
                  'Продолжить без входа',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signIn() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ref.read(authErrorProvider.notifier).state = 'Заполните все поля';
      return;
    }

    ref.read(isLoadingProvider.notifier).state = true;
    ref.read(authErrorProvider.notifier).state = null;

    // TODO: Call auth repository signInWithEmail
    ref.read(isLoadingProvider.notifier).state = false;
  }

  void _signInWithGoogle() {
    // TODO: Call auth repository signInWithGoogle
  }
}
