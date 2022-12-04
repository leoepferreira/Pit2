import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _produtosVendaLocal = prefs
            .getStringList('ff_produtosVendaLocal')
            ?.map((path) => path.ref)
            .toList() ??
        _produtosVendaLocal;
    _totalCompra = prefs.getDouble('ff_totalCompra') ?? _totalCompra;
  }

  late SharedPreferences prefs;

  List<DocumentReference> _produtosVendaLocal = [];
  List<DocumentReference> get produtosVendaLocal => _produtosVendaLocal;
  set produtosVendaLocal(List<DocumentReference> _value) {
    _produtosVendaLocal = _value;
    prefs.setStringList(
        'ff_produtosVendaLocal', _value.map((x) => x.path).toList());
  }

  void addToProdutosVendaLocal(DocumentReference _value) {
    _produtosVendaLocal.add(_value);
    prefs.setStringList('ff_produtosVendaLocal',
        _produtosVendaLocal.map((x) => x.path).toList());
  }

  void removeFromProdutosVendaLocal(DocumentReference _value) {
    _produtosVendaLocal.remove(_value);
    prefs.setStringList('ff_produtosVendaLocal',
        _produtosVendaLocal.map((x) => x.path).toList());
  }

  double taxaDeEntrega = 10;

  double _totalCompra = 0.0;
  double get totalCompra => _totalCompra;
  set totalCompra(double _value) {
    _totalCompra = _value;
    prefs.setDouble('ff_totalCompra', _value);
  }

  String formaPagamento = '';
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
