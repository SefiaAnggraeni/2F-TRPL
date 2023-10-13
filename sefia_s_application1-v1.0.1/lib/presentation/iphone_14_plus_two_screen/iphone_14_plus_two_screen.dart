import '../iphone_14_plus_two_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sefia_s_application1/core/app_export.dart';
import 'package:sefia_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:sefia_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:sefia_s_application1/widgets/app_bar/custom_app_bar.dart';

class Iphone14PlusTwoScreen extends StatelessWidget {
  const Iphone14PlusTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 54.h,
                leading: AppbarImage1(
                    imagePath: ImageConstant.imgUndo,
                    margin:
                        EdgeInsets.only(left: 20.h, top: 15.v, bottom: 16.v),
                    onTap: () {
                      onTapUndoone(context);
                    }),
                title: AppbarTitle(
                    text: "msg_list_personal_data".tr,
                    margin: EdgeInsets.only(left: 17.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 26.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 9.h, right: 24.h),
                                  child: ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(height: 21.v);
                                      },
                                      itemCount: 8,
                                      itemBuilder: (context, index) {
                                        return UserprofileItemWidget();
                                      })))),
                      Divider(indent: 26.h),
                      Padding(
                          padding: EdgeInsets.only(top: 232.v),
                          child: Divider(indent: 26.h)),
                      Padding(
                          padding: EdgeInsets.only(top: 232.v, bottom: 9.v),
                          child: Divider(indent: 26.h))
                    ]))));
  }

  onTapUndoone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14PlusOneScreen);
  }
}
