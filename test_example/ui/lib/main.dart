import 'package:flutter/material.dart';
import 'package:test_example/fs/test.fs.dart';
import 'package:test_example/fs/test.pbgrpc.dart';

void main() {
  LoginClientWrapper.init('127.0.0.1', 1234);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Center(
              child: LoginComponent(
        builder: (context, state) {
          Widget build(LoginState state) {
            switch (state.status) {
              case LoginStatus.initial:
                return TextButton(
                    onPressed: () {
                      context.read<LoginBloc>().add(LoginStarted(LoginInfo()));
                    },
                    child: const Text('start'));
              case LoginStatus.loading:
                return TextButton(
                    onPressed: () {}, child: const Text('loading'));
              case LoginStatus.success:
                return TextButton(
                    onPressed: () {}, child: const Text('success'));
              case LoginStatus.failure:
                return TextButton(
                    onPressed: () {
                      context.read<LoginBloc>().add(LoginRetry(LoginInfo()));
                    },
                    child: const Text('retry'));
            }
          }

          return Row(
            children: [build(state)],
          );
        },
        listener: (context, state) => {
          print(
              'status: ${state.status}, error: ${state.error}, result: ${state.result}')
        },
      ))),
    );
  }
}
