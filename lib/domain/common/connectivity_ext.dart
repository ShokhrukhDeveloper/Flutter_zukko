import 'package:connectivity/connectivity.dart';

extension Connectivity on ConnectivityResult {
  bool get hasNetworkConnection => this != ConnectivityResult.none;
}
