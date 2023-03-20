import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../bindings/interfaces/feature_bindings.dart';
import '../config.dart';
import '../providers/providers.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  const EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes () {
    return Features.features;
  }
}


class Features {
  static List<GetPage> features = [];
  static final Features _singleton = Features._internal();
  factory Features() {
    return _singleton;
  }
  Features._internal();

  static void _attachPages(List<GetPage> feature) {
    features.addAll(feature);
  }

  static Future<void> attach(FeatureBinding binding) async {
    if(binding is BindingsAppBarActionAttachable) {
      BindingsAppBarActionAttachable appBarActionAttachable = binding as BindingsAppBarActionAttachable;
      Providers.appBarProvider.attachAppbarActions = appBarActionAttachable.appbarActions;
    }
    if(binding is BindingsPageRouteAttachable) {
      BindingsPageRouteAttachable pageRouteAttachable = binding as BindingsPageRouteAttachable;
      Features._attachPages(pageRouteAttachable.pageRoutes);
    }
    if(binding is BindingsTabBarAttachable) {
      BindingsTabBarAttachable tabBarAttachable = binding as BindingsTabBarAttachable;
      Providers.tabBarProvider.attachTabBar = {tabBarAttachable.tab: tabBarAttachable.view};
    }

    await binding.bind();
  }
}