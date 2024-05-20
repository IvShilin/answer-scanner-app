import 'package:flutter/material.dart';
import 'package:topg/topg.dart';

import 'src/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TopG.init();
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  final _router = ExampleRouter();
  @override
  Widget build(BuildContext context) => TopG(
        child: MaterialApp.router(
          title: 'TopG example',
          theme: ThemeData(
            useMaterial3: true,
          ),
          routerConfig: _router.config(),
        ),
      );

  @override
  void dispose() {
    super.dispose();
  }
}
