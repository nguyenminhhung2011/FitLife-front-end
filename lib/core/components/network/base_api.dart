import 'dart:io';
import 'package:dio/dio.dart';
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

  // SingleResult<TokenModel?> authFunction({
  //   required Future<HttpResponse<SignInResponse?>> functionCall,
  // }) {
  //   return SingleResult.fromCallable(
  //     () async {
  //       final response = await getStateOf<SignInResponse?>(
  //         request: () async => await functionCall,
  //       );
  //       if (response is DataFailed) {
  //         return Either.left(
  //           AppException(message: response.dioError?.message ?? 'Error'),
  //         );
  //       }
  //       if (response.data == null) {
  //         return Either.left(AppException(message: 'Data error'));
  //       }
  //       final tokenModel = response.data!.token;
  //       if (Validator.tokenNull(tokenModel)) {
  //         return Either.left(AppException(message: 'Data null'));
  //       }

  //       ///[Print] log data
  //       log("[Access] ${tokenModel.access?.token}");
  //       log("[Refresh] ${tokenModel.refresh?.token}");
  //       log("[Expired time] ${DateFormat().add_yMd().format(tokenModel.access?.expires ?? DateTime.now())}");

  //       await CommonAppSettingPref.setExpiredTime(
  //           (tokenModel.access?.expires ?? DateTime.now())
  //               .millisecondsSinceEpoch);
  //       await CommonAppSettingPref.setAccessToken(
  //           tokenModel.access?.token ?? '');
  //       await CommonAppSettingPref.setRefreshToken(
  //           tokenModel.refresh?.token ?? '');

  //       return Either.right(tokenModel);
  //     },
  //   );
  // }
}
