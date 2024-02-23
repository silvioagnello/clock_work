import 'dart:async';

import 'package:mobx/mobx.dart';
part 'panel_store.g.dart';

class PanelStore = _PanelStore with _$PanelStore;

enum TipoIntervalo { TRABALHO, DESCANSO }

abstract class _PanelStore with Store {
  _PanelStore() {
    //autorun((_) => print(tipoIntervalo.toString()));
  }

  int iniMin = 0;
  int counter = 60;
  Timer? cronometro;

  @observable
  int iniMinTrabalho = 3;

  @observable
  int iniMinDescanso = 2;

  @observable
  int iniSec = 0;

  @observable
  bool iniciado = false;

  @observable
  int digitoPainelMin = 3;

  @observable
  int digitoPainelSec = 0;

  @observable
  TipoIntervalo tipoIntervalo = TipoIntervalo.TRABALHO;

  @action
  void incTrabalho() {
    iniMinTrabalho++;
  }

  @action
  void incDescanso() {
    iniMinDescanso++;
  }

  @action
  void decTrabalho() {
    if (iniMinTrabalho > 1) {
      iniMinTrabalho--;
    }
  }

  @action
  void decDescanso() {
    if (iniMinDescanso > 1) {
      iniMinDescanso--;
    }
  }

  @action
  void iniciar() {
    iniciado = true;
    cronometro = Timer.periodic(
      Duration(milliseconds: counter),
      (timer) {
        if (digitoPainelMin == 0 && digitoPainelSec == 0) {
          trocarIntervalo();
          digitoPainelMin = iniMin;
        } else if (digitoPainelSec == iniSec) {
          digitoPainelSec = 59;
          digitoPainelMin--;
        } else {
          digitoPainelSec--;
        }
      },
    );
  }

  @action
  void parar() {
    cronometro?.cancel();
    iniciado = false;
  }

  @action
  void reiniciar() {
    parar();
    tipoIntervalo = TipoIntervalo.TRABALHO;
    digitoPainelMin = iniMinTrabalho;
    digitoPainelSec = 0;
  }

  bool estaTrabalhando() {
    return tipoIntervalo == TipoIntervalo.TRABALHO;
  }

  bool estaDescansando() {
    return tipoIntervalo == TipoIntervalo.DESCANSO;
  }

  @action
  void trocarIntervalo() {
    parar();
    if (estaTrabalhando()) {
      tipoIntervalo = TipoIntervalo.DESCANSO;
      iniMin = iniMinDescanso;
    } else {
      tipoIntervalo = TipoIntervalo.TRABALHO;
      iniMin = iniMinTrabalho;
    }
    iniSec = 0;
    iniciado = false;
    iniciar();
  }
}
