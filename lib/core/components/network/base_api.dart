import 'dart:io';
import 'package:dart_either/dart_either.dart';
import 'package:dio/dio.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/data_state.dart';
import 'package:retrofit/dio.dart';

abstract class BaseApi {
  final String dataNullError = "Data null";
  final String baseError = "Error";

  Future<DataState<T>> getStateOf<T>({
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final httpResponse = await request();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(data: httpResponse.data);
      } else {
        return DataFailed(
          // ignore: deprecated_member_use
          dioError: DioError(
            requestOptions: httpResponse.response.requestOptions,
            response: httpResponse.response,
          ),
        );
      }
      // ignore: deprecated_member_use
    } on DioError catch (error) {
      return DataFailed(dioError: error);
    }
  }

  Future<SResult<R>> apiCall<T, R>({
    required R Function(T) mapper,
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final response =
          await getStateOf(request: () async => await request.call());
      if (response is DataFailed) {
        return Either.left(
          AppException(message: response.dioError?.message ?? baseError),
        );
      }
      if (response.data == null) {
        return Either.left(AppException(message: dataNullError));
      }
      return Either.right(mapper(response.data!));
    } catch (e) {
      return Either.left(AppException(message: e.toString()));
    }
  }
}
