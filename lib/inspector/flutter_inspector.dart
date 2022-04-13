import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../colors/colors.dart';
import 'flutter_inspector_detail.dart';

part './subView/categories_row.dart';
part './subView/recomanded_list_view.dart';
part './subView/title_text.dart';
part 'subView/populer_list_view.dart';

class FlutterInspector extends StatelessWidget {
  const FlutterInspector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: context.horizontalPaddingNormal,
        child: ListView(
          children: [
            const _TitleTextWidget(title: 'Kategoriler'),
            context.emptySizedHeightBoxLow,
            const _CategoriesRowWidget(),
            context.emptySizedHeightBoxLow3x,
            const _TitleTextWidget(title: 'Önerilenler'),
            context.emptySizedHeightBoxLow,
            const _RecomandedListViewWidget(),
            context.emptySizedHeightBoxLow,
            const _TitleTextWidget(title: 'Popülerler'),
            context.emptySizedHeightBoxLow,
            const _PopulerListView()
          ],
        ),
      )),
    );
  }
}
