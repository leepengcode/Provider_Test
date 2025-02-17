import 'package:demo_app_provider/data/respnse/status.dart';

class ApiResponse<T> {
  Status status;
  T? data;
  String? message;

  ApiResponse.loading([this.message]) : status = Status.LOADING;
  ApiResponse.completed([this.data]) : status = Status.COMPLETED;
  ApiResponse.error([this.message]) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}
