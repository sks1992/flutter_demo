import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/core/model/news_model.dart';

import '../model/expired_ehicles_model.dart';

class ExpiredVehiclesService {
   Future<List<ExpiredVehiclesModel>> fetchExpiredVehicle() async {
    var response = await http.get(Uri.parse(
        'http://globalgps.in:8089/api/v1/Vehicle/ExpiredVehicles/18/2025-12-31'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return expiredVehiclesModelFromJson(jsonString);
    } else {
      Get.snackbar("Error", response.body.toString());
      return [];
    }
  }

   Future<NewsModel> fetchTopHeadlines() async {
    var response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=e004331040d8464892c01b7f4b70641f'));
    if (response.statusCode == 200) {
      return NewsModel.fromJson(json.decode(response.body));
    } else {
      Get.snackbar("Error", response.body.toString());
      return NewsModel(status: "500", totalResults: 0, articles: []);
    }
  }

  /*
   late Dio _dio;

  @override
  void onInit() {
    var apiDioOpts = BaseOptions(
      baseUrl: Constants.apiBaseUrl,
      connectTimeout: 60 * 1000,
      sendTimeout: 60 * 1000,
    );

    _dio = Dio(apiDioOpts)
      ..interceptors.clear()
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    super.onInit();
  }

  Future<Options> _dioOptions() async {
    var _token = await _sharedService.getAccessToken();
    return Options(headers: {
      Constants.authorizationHeaderName: '${Constants.tokenType} $_token'
    });
  }

  Future<String> _fileSavePath(String fileName) async {
    Directory _appDocDir = await getApplicationDocumentsDirectory();
    return "${_appDocDir.path}/downloads/$fileName";
  }

   Future<ResultModel> downloadFile(DownloadFileModel model) async {
    final _opts = await _dioOptions();
    _opts.method = "POST";
    final _savePath = await _fileSavePath(model.fileName);
    var _response = await _dio.download("/Documents/DownloadFile", _savePath,
        data: model.toJson(),
        options: _opts, onReceiveProgress: (received, total) {
      _progressController.onDownloadProgress(received, total);
    });
    return ResultModel(true, _savePath);
  }


  Future<ResultModel> uploadAssessment(String filePath) async {
    final _opts = await _dioOptions();
    _opts.method = "POST";
    final _formData = FormData.fromMap({
      'studentId': 11,
      'assessmentId': 20,
      'file': await MultipartFile.fromFile(filePath),
    });

    final _response = await _dio.post('/Assessment/UploadAssessment',
        data: _formData, options: _opts, onSendProgress: (sent, total) {
      _progressController.onUploadProgress(sent, total);
    });
    return ResultModel.fromJson(_response.data);
  }
  * */
}
