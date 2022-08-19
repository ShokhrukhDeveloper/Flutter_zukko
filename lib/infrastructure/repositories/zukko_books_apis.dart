import 'package:chopper/chopper.dart';
import 'package:zukko_books/infrastructure/models/main_data.dart';

import '../built_value_converter.dart';
import '../interceptors.dart';

part 'zukko_books_apis.chopper.dart';

@ChopperApi(baseUrl: '/api/v1/category/')
abstract class MainService extends ChopperService {
  @Get(path: 'list/')
  Future<Response<Categories>> getCategories(
    @Header() String header,
  );
  static MainService create() =>
      _$MainService(_Client('http://157.245.104.91', true));
}

class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
          baseUrl: baseUrl,
          interceptors: useInterceptors
              ? [
                  HttpLoggingInterceptor(),
                  CurlInterceptor(),
                  NetworkInterceptor(),
                  // BackendException(),
                ]
              : const [],
          converter: BuiltValueConverter(),
        );
}
