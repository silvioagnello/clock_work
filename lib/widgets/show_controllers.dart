import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pomodoro_clock/store/panel_store.dart';
import 'package:provider/provider.dart';

class ShowControllers extends StatelessWidget {
  const ShowControllers({super.key});

  @override
  Widget build(BuildContext context) {
    final panel = Provider.of<PanelStore>(context);

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0),
        child: Observer(
          builder: (_) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              controlColumn(panel.iniMinTrabalho.toString(), 'Trabalho',
                  panel.incTrabalho, panel.decTrabalho),
              controlColumn(panel.iniMinDescanso.toString(), 'Descanso',
                  panel.incDescanso, panel.decDescanso)
            ],
          ),
        ),
      ),
    );
  }

  Column controlColumn(
      String inicial, String text, VoidCallback funcinc, VoidCallback funcdec) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(text),
        Row(
          children: [
            IconButton(
                icon: const Icon(FontAwesomeIcons.solidCircleUp),
                color: Colors.red,
                onPressed: funcinc),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('$inicial min')),
            IconButton(
                icon: const Icon(FontAwesomeIcons.solidCircleDown),
                color: Colors.red,
                onPressed: funcdec)
          ],
        )
      ],
    );
  }
}
