import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:stacked/stacked.dart';
import 'package:sub_track/ui/dumb_widgets/buttons.dart';
import './add_sub_viewmodel.dart';
import 'package:sub_track/ui/shared/shared.dart';

class AddSubView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddSubViewModel>.reactive(
      viewModelBuilder: () => AddSubViewModel(),
      builder: (context, model, child) => CupertinoPageScaffold(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: STButton(onPressed: () {
              model.navigateToAddSub();
            }),
          ),
        ),
      ).addNavigator(),
    );
  }
}
