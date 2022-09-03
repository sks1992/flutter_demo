import 'package:get/get.dart';
import 'package:untitled/core/model/news_model.dart';

import '../model/expired_ehicles_model.dart';
import '../service/expired_vehicles_service.dart';

class ExpiredVehiclesController extends GetxController {
  var api = ExpiredVehiclesService();
  var isLoading = true.obs;
  RxList<ExpiredVehiclesModel> expiredVehiclesList =
      RxList<ExpiredVehiclesModel>([]);

  RxList<Articles> newsList = RxList<Articles>([]);

  @override
  void onInit() {
    fetchExpiredVehicles();
    fetchNews();
    super.onInit();
  }

  void fetchExpiredVehicles() async {
    try {
      isLoading(true);
      var expiredVehicles = await api.fetchExpiredVehicle();
      expiredVehiclesList.value = expiredVehicles;
    } finally {
      isLoading(false);
    }
  }

  void fetchNews() async {
    try {
      isLoading(true);
      var news = await api.fetchTopHeadlines();
      newsList.value = news.articles;
    } finally {
      isLoading(false);
    }
  }

  /*
    Future<void> downloadFile(
      int index, String title, DownloadFileModel model) async {
    _progressController.downloadProgress.value = 0;
    totalPages.value = 0;
    currentPage.value = 1;
    try {
      showProgress.value = true;
      update([index]);
      var _result = await _fileApi.downloadFile(model);
      if (_result.isSuccess) {
        pdfViewController =
            PdfController(document: PdfDocument.openFile(_result.message));
        Get.toNamed(RouteNames.pdfViewer, arguments: title);
      } else {
        showToast(_result.message);
      }
    } on Exception catch (e) {
      showToast("Download failed.");
    } finally {
      showProgress.value = false;
      update([index]);
    }
  }
  * */
}
