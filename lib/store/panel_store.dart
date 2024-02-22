import 'dart:async';

import 'package:mobx/mobx.dart';
part 'panel_store.g.dart';

class PanelStore = _PanelStore with _$PanelStore;

abstract class _PanelStore with Store {
  _PanelStore() {
    //autorun((_) => print(iniMinTrabalho.toString()));
  }

  int counter = 100;
  Timer? cronometro;

  @observable
  bool isWorking = true;

  @observable
  int iniMinTrabalho = 1;

  @observable
  int iniMinDescanso = 1;

  @observable
  int iniSec = 0;

  @observable
  bool iniciado = false;

  @observable
  int digitoPainelMin = 1;

  @observable
  int digitoPainelSec = 0;

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
  void increment() {
    iniciado = true;
    var iniMin = isWorking ? iniMinTrabalho : iniMinDescanso;
    cronometro = Timer.periodic(
      Duration(milliseconds: counter),
      (timer) {
        if (digitoPainelMin == 0 && digitoPainelSec == 0) {
          digitoPainelMin = iniMin;
          iniciado = false;
          cronometro?.cancel();
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
  void reiniciar() {
    iniciado = false;
    digitoPainelMin = iniMinTrabalho;
    digitoPainelSec = iniSec;
  }

  @action
  void decrement() {
    if (iniciado == true) {
      cronometro?.cancel();
      iniciado = false;
    }
  }
}
