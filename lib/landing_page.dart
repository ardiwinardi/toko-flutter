import 'package:flutter/material.dart';
import 'package:flutter_app_first/app/home_page/home_page.dart';
import 'package:flutter_app_first/app/login_page/login_page.dart';
import 'package:flutter_app_first/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    await ref.read(authNotifierProvider.notifier).getMe();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authNotifierProvider);
    return user.when(
      currentUser: (data) => const HomePage(),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (message) => const LoginPage(),
    );
  }
}
