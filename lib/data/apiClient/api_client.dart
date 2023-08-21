import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/core/utils/progress_dialog_utils.dart';
import 'package:ambulance_booking_app/data/models/login/post_login_resp.dart';
import 'package:ambulance_booking_app/data/models/s14428637C11bc1f0Af95466f8bfb84b3d41bf3a5/get_s14428637_c11bc1f0_af95466f8bfb84b3d41bf3a5_resp.dart';

class ApiClient extends GetConnect {
  var url = "https://www.postman.com";

  var dhiwiseUrl = "https://nodedemo.dhiwise.co";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);
    httpClient.addRequestModifier<dynamic>((request) {
      Map<String, String> headers = {
        "Content-Type": "application/json",
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYTNmOTI0NTNjODViYzEyNjU4ZjNiZSIsInVzZXJuYW1lIjoiSnVkZ2VfQ3JvbmluIiwiaWF0IjoxNjcxNjk3MTcxfQ.hbZLKSsS6Mdj1ndhAf4rm_5we4iWYvKY1VPSo51sQRM"
      };
      request.headers.addAll(headers);
      return request;
    });
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  Future<GetS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp>
      fetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5(
          {Map<String, dynamic> queryParams = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/uharvest/workspace/image-uploader/collection/14428637-c11bc1f0-af95-466f-8bfb-84b3d41bf3a5',
        query: queryParams,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp.fromJson(
            response.body);
      } else {
        throw response.body != null
            ? GetS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp.fromJson(
                response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<PostLoginResp> createLogin({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$dhiwiseUrl/device/auth/login',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostLoginResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostLoginResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
