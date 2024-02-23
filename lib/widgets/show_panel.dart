import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../store/panel_store.dart';

class ShowPanel extends StatelessWidget {
  const ShowPanel({super.key});

  @override
  Widget build(BuildContext context) {
    //PanelStore panel = PanelStore();
    final panel = Provider.of<PanelStore>(context);

    return Observer(
      builder: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            panel.tipoIntervalo == TipoIntervalo.TRABALHO
                ? 'Hora de trabalhar'
                : 'Hora de Descansar',
            style: const TextStyle(fontSize: 40, color: Colors.lime),
          ),
          Text(
            '${panel.digitoPainelMin.toString().padLeft(2, '0')}:'
            '${panel.digitoPainelSec.toString().padLeft(2, '0')}',
            style: const TextStyle(fontSize: 110, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (panel.iniciado)
                  ElevatedButton.icon(
                      onPressed: panel.parar,
                      label: const Text('Parar'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      icon: const Icon(Icons.restart_alt_outlined,
                          color: Colors.teal))
                else if (!panel.iniciado)
                  ElevatedButton.icon(
                      onPressed: panel.iniciar,
                      label: //panel.digitoPainelSec == panel.iniSec                            ?
                          const Text('Começar'),
                      //: const Text('Continuar'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      icon: const Icon(Icons.play_arrow, color: Colors.teal)),
                ElevatedButton.icon(
                    onPressed: panel.reiniciar,
                    // panel.digitoPainelSec != panel.iniSec && !panel.iniciado
                    //     ? panel.reiniciar
                    //     : null,
                    label: const Text('Reiniciar'),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    icon: const Icon(Icons.play_arrow, color: Colors.teal)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
