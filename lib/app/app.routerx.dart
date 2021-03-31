// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
// import 'package:stacked/stacked.dart';
// import 'package:sub_track/ui/shared/shared.dart';
// import 'package:sub_track/ui/view/add_sub/new_sub.dart';
// import 'package:sub_track/ui/view/demo/demo_view.dart';
// import 'package:sub_track/ui/view/home/home_view.dart';

// import 'app.router.dart';
part of 'app.router.dart';

// NOTE This file contains custom page map which are to be replaced in _pagesMap variable in app.router.dart file
// This cutom map will enable modal_bottom_sheet (cupertino style)

class StackedRouterX extends StackedRouter {
  @override
  Map<Type, StackedRouteFactory> get pagesMap => {
        ...Map.from(_pagesMap),
        ...customPagesMap,
      };

  final customPagesMap = <Type, StackedRouteFactory>{
    DemoView: (data) {
      return CupertinoModalBottomSheetRoute<dynamic>(
        builder: (context) => DemoView(),
        expanded: false,
        topRadius: kDefaultTopRadius,
        settings: data,
        bounce: true,
        enableDrag: true,
      );
    },
    NewSubscription: (data) {
      return CupertinoModalBottomSheetRoute<dynamic>(
        builder: (context) => NewSubscription(),
        expanded: false,
        topRadius: kDefaultTopRadius,
        isDismissible: true,
        // duration: Duration(milliseconds: 400),
        animationCurve: Curves.easeIn,
        settings: data,
        bounce: false,
        enableDrag: true,
      );
    },
    HomeView: (data) {
      return MaterialWithModalsPageRoute<dynamic>(
        builder: (context) => HomeView(),
        fullscreenDialog: true,
        maintainState: true,
        settings: data,
      );
    },
  };
}
