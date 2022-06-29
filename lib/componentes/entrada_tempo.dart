import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';

class EntradaValor extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaValor({
    Key? key,
    required this.titulo,
    required this.valor,
    this.inc,
    this.dec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(builder: (_) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            titulo,
            style: const TextStyle(fontSize: 25),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: inc,
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    primary:
                        store.estaTrabalhando() ? Colors.red : Colors.green),
                child: const Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ),
              ),
              Text(
                "$valor",
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: dec,
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    primary:
                        store.estaTrabalhando() ? Colors.red : Colors.green),
                child: const Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
