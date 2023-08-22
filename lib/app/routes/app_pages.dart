import 'package:get/get.dart';

import '../modules/button_3d/bindings/button_3d_binding.dart';
import '../modules/button_3d/views/button_3d_view.dart';
import '../modules/drift_documentation/bindings/drift_documentation_binding.dart';
import '../modules/drift_documentation/views/drift_documentation_view.dart';
import '../modules/drift_documentation/views_database/bindings/views_database_binding.dart';
import '../modules/drift_documentation/views_database/views/views_database_view.dart';
import '../modules/expandable_bottom_sheet/bindings/expandable_bottom_sheet_binding.dart';
import '../modules/expandable_bottom_sheet/views/expandable_bottom_sheet_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/reels/bindings/reels_binding.dart';
import '../modules/reels/views/reels_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REELS,
      page: () => const ReelsView(),
      binding: ReelsBinding(),
    ),
    GetPage(
      name: _Paths.BUTTON_3D,
      page: () => const Button3dView(),
      binding: Button3dBinding(),
    ),
    GetPage(
      name: _Paths.DRIFT_DOCUMENTATION,
      page: () => const DriftDocumentationView(),
      binding: DriftDocumentationBinding(),
      children: [
        GetPage(
          name: _Paths.VIEWS_DATABASE,
          page: () => const ViewsDatabaseView(),
          binding: ViewsDatabaseBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.EXPANDABLE_BOTTOM_SHEET,
      page: () => const ExpandableBottomSheetView(),
      binding: ExpandableBottomSheetBinding(),
    ),
  ];
}
