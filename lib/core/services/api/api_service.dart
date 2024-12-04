import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fk_task/core/endpoints/end_points.dart';
import 'package:fk_task/core/enums/api_enum.dart';
import 'package:fk_task/core/helper/app_helper.dart';
import 'package:fk_task/core/services/api/api_call_model.dart';
import 'package:fk_task/core/services/cache/hive_service.dart';

class ApiService {
  final HiveService hiveService;
  static final BaseOptions _baseOptions = BaseOptions(
    responseType: ResponseType.json,
    connectTimeout: const Duration(
      seconds: 20,
    ),
    receiveTimeout: const Duration(
      seconds: 15,
    ),
  );
  final Dio _dio = Dio(
    _baseOptions,
  );

  ApiService(this.hiveService) {
    _dio.options.baseUrl = EndPoints.baseUrl;
  }

  Future<dynamic> apiCall({
    required ApiCallModel model,
  }) async {
    _dio.options.headers.addAll(
      AppHelper.getHeader(),
    );
    switch (model.type) {
      case ApiCallType.get:
        return await _get(
          endPoint: model.endPoint,
          body: model.body,
          query: model.query,
        );
      case ApiCallType.post:
        return await _post(
          endPoint: model.endPoint,
          body: model.body,
          query: model.query,
        );
      case ApiCallType.postFile:
        return await _postFile(
          endPoint: model.endPoint,
          body: model.body,
          query: model.query,
        );
      case ApiCallType.put:
        return await _put(
          endPoint: model.endPoint,
          body: model.body,
          query: model.query,
        );
      case ApiCallType.patch:
        return await _patch(
          endPoint: model.endPoint,
          body: model.body,
          query: model.query,
        );
      case ApiCallType.delete:
        return await _delete(
          endPoint: model.endPoint,
          body: model.body,
          query: model.query,
        );
    }
  }

  Future<dynamic> _get({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    Response response = await _dio.get(
      endPoint,
      data: body,
      queryParameters: query,
    );
    return response.data;
  }

  Future<dynamic> _post({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    Response response = await _dio.post(
      endPoint,
      data: body,
      queryParameters: query,
    );

    return response.data;
  }

  Future<dynamic> _postFile({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    Map<String, dynamic> data = {};

    if (body != null) {
      if (body.values.first.isNotEmpty) {
        String fileName = body.values.first.split('/').last;
        data.addAll({
          body.keys.first: await MultipartFile.fromFile(
            body.values.first,
            filename: fileName,
          )
        });
      }
      body.remove(
        body.keys.first,
      );
      body.forEach((key, value) {
        data.addAll({
          key: value,
        });
      });
    }
    FormData formData = FormData.fromMap(
      data,
    );

    Response response = await _dio.post(
      endPoint,
      data: formData,
      queryParameters: query,
    );
    return response.data;
  }

  Future<dynamic> _put({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    Response response = await _dio.put(
      endPoint,
      data: body,
      queryParameters: query,
    );
    return response.data;
  }

  Future<dynamic> _patch({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    Response response = await _dio.patch(
      endPoint,
      data: body,
      queryParameters: query,
    );
    log(response.statusCode.toString());
    return response.data;
  }

  Future<dynamic> _delete({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    Response response = await _dio.delete(
      endPoint,
      data: body,
      queryParameters: query,
    );
    return response.data;
  }
}
