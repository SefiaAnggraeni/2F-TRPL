import 'package:flutter/material.dart';
import 'package:sefia_s_application1/core/app_export.dart';

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlineOnError,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_presiden_jokowi".tr,
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 4.v),
            Text(
              "msg_email_jokowi_indonesia_com".tr,
              style: theme.textTheme.bodySmall,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                right: 95.h,
                bottom: 16.v,
              ),
              child: Text(
                "msg_jalan_raya_jember".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallOnError,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
