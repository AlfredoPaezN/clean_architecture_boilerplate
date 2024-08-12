import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_bloc.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_state.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/example_content.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: BlocListener<ExampleBloc, ExampleState>(
        listener: (context, state) => {
          if (state.text != null) {print('STATE TEXT ${state.text}')}
        },
        child: BlocBuilder<ExampleBloc, ExampleState>(
          builder: (context, state) {
            if (state.text != null) {
              print('STATE TEXT ${state.text}');
            }
            return LoginContent(
              state: state,
            );
          },
        ),
      ),
    );
  }
}
