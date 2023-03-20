import 'package:get/get.dart';
import '../../../core/bindings/interfaces/feature_bindings.dart';
import '../../../core/constants/app_translation_keys.dart';
import '../../../core/navigation/routes.dart';
import '../../../core/providers/providers.dart';
import '../presentation/tabs_screen/controllers/tabs.controller.dart';
import '../presentation/tabs_screen/tabs.screen.dart';
import 'components/fixed_app_bar.dart';

class TabsBindings extends FeatureBinding implements BindingsPageRouteAttachable {

  @override
  Future<void> bind() async {}

  @override
  List<GetPage> pageRoutes = [
      GetPage(
        name: Routes.HOME,
        page: () => TabsScreen(
          appAppBar: FixedAppAppBar(
            title: AppTranslationKeys.appName,
            actions: Providers.appBarProvider.getAppBarActions,
          ),
        ),
        binding: _HomeControllerBinding(),
      )
    ];
}

class _HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );
  }
}
