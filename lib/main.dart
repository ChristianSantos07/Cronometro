import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/pomodoro.dart';
import 'store/pomodoro.store.dart';


/*
Aplicativo feito em flutter com gerenciamento de estado mobx
última atualização 29/06/2022
Desenvolvido por Christian Santos
csbraga1995@gmail.com
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(),
        home: const Pomodoro(),
      ),
    );
  }
}
