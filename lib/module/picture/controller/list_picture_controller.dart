import 'package:mini_project_ids/core.dart';

class ListPictureController extends GetxController {
  final PictureService _service = PictureService();

  var pictures = <Map<String, dynamic>>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadPictures();
  }

  Future<void> loadPictures() async {
    isLoading.value = true;
    try {
      final data = await _service.fetchPictures();
      pictures.assignAll(data);
    } catch (e) {
      print('Error: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
