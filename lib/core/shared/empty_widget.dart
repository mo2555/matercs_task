import 'package:easy_localization/easy_localization.dart';
import 'package:fk_task/core/extensions/size_extension.dart';
import 'package:fk_task/core/shared/asset_image_widget.dart';
import 'package:fk_task/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(LocaleKeys.no_data.tr()),
    );
  }
}
