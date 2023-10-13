import 'package:flutter/material.dart';
import 'package:sefia_s_application1/core/app_export.dart';
import 'package:sefia_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sefia_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:sefia_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:sefia_s_application1/widgets/custom_checkbox_button.dart';
import 'package:sefia_s_application1/widgets/custom_elevated_button.dart';
import 'package:sefia_s_application1/widgets/custom_outlined_button.dart';
import 'package:sefia_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14PlusOneScreen extends StatelessWidget {
  Iphone14PlusOneScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController inputfieldoneController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  bool description = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                title: AppbarTitle(
                    text: "lbl_personal_form".tr,
                    margin: EdgeInsets.only(left: 24.h)),
                actions: [
                  AppbarImage(
                      imagePath: ImageConstant.imgListview,
                      margin: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 13.v),
                      onTap: () {
                        onTapListviewone(context);
                      })
                ]),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 12.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_full_name".tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 7.v),
                                    CustomTextFormField(
                                        controller: fullNameController,
                                        hintText: "lbl_enter_fullname".tr)
                                  ]),
                              SizedBox(height: 14.v),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_email".tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 7.v),
                                    CustomTextFormField(
                                        controller: emailController,
                                        hintText: "msg_enter_your_email".tr,
                                        textInputType:
                                            TextInputType.emailAddress)
                                  ]),
                              SizedBox(height: 39.v),
                              Row(children: [
                                Expanded(
                                    child: CustomTextFormField(
                                        controller: phoneNumberController,
                                        hintText: "msg_enter_phone_number".tr,
                                        textInputType: TextInputType.phone)),
                                Opacity(
                                    opacity: 0.3,
                                    child: CustomOutlinedButton(
                                        width: 98.h,
                                        text: "lbl_verify".tr,
                                        margin: EdgeInsets.only(left: 11.h)))
                              ]),
                              SizedBox(height: 14.v),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_personal_id_number".tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 7.v),
                                    CustomTextFormField(
                                        controller: inputfieldoneController,
                                        hintText: "lbl_value".tr,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20.h, vertical: 15.v))
                                  ]),
                              SizedBox(height: 14.v),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_address".tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 7.v),
                                    CustomTextFormField(
                                        controller: addressController,
                                        hintText: "msg_enter_your_text".tr,
                                        textInputAction: TextInputAction.done)
                                  ]),
                              SizedBox(height: 14.v),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_choose_a_date".tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 7.v),
                                    CustomOutlinedButton(
                                        text: "lbl_select_date".tr,
                                        rightIcon: Container(
                                            margin: EdgeInsets.only(left: 30.h),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar)),
                                        isDisabled: true)
                                  ]),
                              SizedBox(height: 29.v),
                              CustomCheckboxButton(
                                  text: "msg_in_publishing_and".tr,
                                  isExpandedText: true,
                                  value: description,
                                  onChange: (value) {
                                    description = value;
                                  }),
                              SizedBox(height: 50.v),
                              Container(
                                  height: 34.v,
                                  width: 380.h,
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary)),
                              SizedBox(height: 15.v),
                              CustomElevatedButton(text: "lbl_submit".tr),
                              SizedBox(height: 45.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgBulletlist,
                                  height: 90.adaptSize,
                                  width: 90.adaptSize),
                              SizedBox(height: 30.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgListview,
                                  height: 90.adaptSize,
                                  width: 90.adaptSize)
                            ]))))));
  }

  onTapListviewone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14PlusTwoScreen);
  }
}
