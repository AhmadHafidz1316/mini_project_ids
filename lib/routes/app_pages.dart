import 'package:mini_project_ids/core.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Paths.LIST_PICTURE, 
      page: () => const ListPictureView(),
      binding: ListPictureBinding(),
    ),
    GetPage(
      name: Paths.DETAIL_PICTURE, 
      page: () => const DetailPictureView(),
      binding: ListPictureBinding(),
    ),
  ];
}
