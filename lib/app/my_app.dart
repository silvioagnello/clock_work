import 'package:flutter/material.dart';
import 'package:pomodoro_clock/store/panel_store.dart';
import 'package:provider/provider.dart';

import '../pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<PanelStore>(create: (_) => PanelStore())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          hintColor: Colors.redAccent,
          // buttonTheme: const ButtonThemeData(
          //   buttonColor: Colors.blueAccent,
          //   shape: RoundedRectangleBorder(),
          //   textTheme: ButtonTextTheme.accent,
          //   splashColor: Colors.cyan,
          // )
        ),
        home: const HomePage(),
      ),
    );
  }
}
