// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panel_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PanelStore on _PanelStore, Store {
  late final _$iniMinTrabalhoAtom =
      Atom(name: '_PanelStore.iniMinTrabalho', context: context);

  @override
  int get iniMinTrabalho {
    _$iniMinTrabalhoAtom.reportRead();
    return super.iniMinTrabalho;
  }

  @override
  set iniMinTrabalho(int value) {
    _$iniMinTrabalhoAtom.reportWrite(value, super.iniMinTrabalho, () {
      super.iniMinTrabalho = value;
    });
  }

  late final _$iniMinDescansoAtom =
      Atom(name: '_PanelStore.iniMinDescanso', context: context);

  @override
  int get iniMinDescanso {
    _$iniMinDescansoAtom.reportRead();
    return super.iniMinDescanso;
  }

  @override
  set iniMinDescanso(int value) {
    _$iniMinDescansoAtom.reportWrite(value, super.iniMinDescanso, () {
      super.iniMinDescanso = value;
    });
  }

  late final _$iniSecAtom = Atom(name: '_PanelStore.iniSec', context: context);

  @override
  int get iniSec {
    _$iniSecAtom.reportRead();
    return super.iniSec;
  }

  @override
  set iniSec(int value) {
    _$iniSecAtom.reportWrite(value, super.iniSec, () {
      super.iniSec = value;
    });
  }

  late final _$iniciadoAtom =
      Atom(name: '_PanelStore.iniciado', context: context);

  @override
  bool get iniciado {
    _$iniciadoAtom.reportRead();
    return super.iniciado;
  }

  @override
  set iniciado(bool value) {
    _$iniciadoAtom.reportWrite(value, super.iniciado, () {
      super.iniciado = value;
    });
  }

  late final _$digitoPainelMinAtom =
      Atom(name: '_PanelStore.digitoPainelMin', context: context);

  @override
  int get digitoPainelMin {
    _$digitoPainelMinAtom.reportRead();
    return super.digitoPainelMin;
  }

  @override
  set digitoPainelMin(int value) {
    _$digitoPainelMinAtom.reportWrite(value, super.digitoPainelMin, () {
      super.digitoPainelMin = value;
    });
  }

  late final _$digitoPainelSecAtom =
      Atom(name: '_PanelStore.digitoPainelSec', context: context);

  @override
  int get digitoPainelSec {
    _$digitoPainelSecAtom.reportRead();
    return super.digitoPainelSec;
  }

  @override
  set digitoPainelSec(int value) {
    _$digitoPainelSecAtom.reportWrite(value, super.digitoPainelSec, () {
      super.digitoPainelSec = value;
    });
  }

  late final _$tipoIntervaloAtom =
      Atom(name: '_PanelStore.tipoIntervalo', context: context);

  @override
  TipoIntervalo get tipoIntervalo {
    _$tipoIntervaloAtom.reportRead();
    return super.tipoIntervalo;
  }

  @override
  set tipoIntervalo(TipoIntervalo value) {
    _$tipoIntervaloAtom.reportWrite(value, super.tipoIntervalo, () {
      super.tipoIntervalo = value;
    });
  }

  late final _$_PanelStoreActionController =
      ActionController(name: '_PanelStore', context: context);

  @override
  void incTrabalho() {
    final _$actionInfo = _$_PanelStoreActionController.startAction(
        name: '_PanelStore.incTrabalho');
    try {
      return super.incTrabalho();
    } finally {
      _$_PanelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incDescanso() {
    final _$actionInfo = _$_PanelStoreActionController.startAction(
        name: '_PanelStore.incDescanso');
    try {
      return super.incDescanso();
    } finally {
      _$_PanelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decTrabalho() {
    final _$actionInfo = _$_PanelStoreActionController.startAction(
        name: '_PanelStore.decTrabalho');
    try {
      return super.decTrabalho();
    } finally {
      _$_PanelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decDescanso() {
    final _$actionInfo = _$_PanelStoreActionController.startAction(
        name: '_PanelStore.decDescanso');
    try {
      return super.decDescanso();
    } finally {
      _$_PanelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void iniciar() {
    final _$actionInfo =
        _$_PanelStoreActionController.startAction(name: '_PanelStore.iniciar');
    try {
      return super.iniciar();
    } finally {
      _$_PanelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void parar() {
    final _$actionInfo =
        _$_PanelStoreActionController.startAction(name: '_PanelStore.parar');
    try {
      return super.parar();
    } finally {
      _$_PanelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reiniciar() {
    final _$actionInfo = _$_PanelStoreActionController.startAction(
        name: '_PanelStore.reiniciar');
    try {
      return super.reiniciar();
    } finally {
      _$_PanelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocarIntervalo() {
    final _$actionInfo = _$_PanelStoreActionController.startAction(
        name: '_PanelStore.trocarIntervalo');
    try {
      return super.trocarIntervalo();
    } finally {
      _$_PanelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
iniMinTrabalho: ${iniMinTrabalho},
iniMinDescanso: ${iniMinDescanso},
iniSec: ${iniSec},
iniciado: ${iniciado},
digitoPainelMin: ${digitoPainelMin},
digitoPainelSec: ${digitoPainelSec},
tipoIntervalo: ${tipoIntervalo}
    ''';
  }
}
