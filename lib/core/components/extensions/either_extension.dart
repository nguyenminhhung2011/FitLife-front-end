import 'package:fit_life/core/components/network/app_exception.dart';

extension EitherExtension<T> on SResult<T> {
  dynamic toState(dynamic Function(T data) successState,
      dynamic Function(AppException) errorState) {
    return fold(ifLeft: errorState, ifRight: successState);
  }
}