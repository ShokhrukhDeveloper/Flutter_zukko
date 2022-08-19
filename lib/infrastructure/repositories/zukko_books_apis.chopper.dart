// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zukko_books_apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$MainService extends MainService {
  _$MainService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MainService;

  @override
  Future<Response<Categories>> getCategories(String header) {
    final $url = '/api/v1/category/list/';
    final $headers = {
      'header': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<Categories, Categories>($request);
  }
}
