import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../store/panel_store.dart';
import '../widgets/show_controllers.dart';
import '../widgets/show_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final panel = Provider.of<PanelStore>(context);

    return Card(
      color: Colors.cyan,
      margin: const EdgeInsets.all(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 16,
      child: Observer(
        builder: (_) => Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: panel.tipoIntervalo == TipoIntervalo.TRABALHO
                      ? Colors.red
                      : Colors.green,
                  child: const ShowPanel(),
                )),
            const Expanded(
              flex: 1,
              child: ShowControllers(),
            ),
          ],
        ),
      ),
    );
  }
}
