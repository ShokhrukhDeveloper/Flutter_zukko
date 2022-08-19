import 'package:connectivity/connectivity.dart';

class ConnectivityX {
  ConnectivityX._();

  static Connectivity? _connectivity;

  static ConnectivityX get create {
    _connectivity = Connectivity();
    return ConnectivityX._();
  }

  static Future<ConnectivityResult> get createAndCheck async {
    final result = await ConnectivityX.create.checkConnectivity();

    return result;
  }

  Future<ConnectivityResult> checkConnectivity() async {
    final result = await _connectivity?.checkConnectivity();

    return result!;
  }
}
