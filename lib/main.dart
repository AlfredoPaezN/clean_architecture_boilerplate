import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_template/blocProviders.dart';
import 'package:clean_arch_template/injection.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/example_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true,
        ),
        initialRoute: 'login',
        routes: {
          'login': (context) => const LoginPage(),
          // 'register': (context) => const RegisterPage(),
        },
      ),
    );
  }
}
