import 'package:dartz/dartz.dart';

import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:fluttertask/application/get_product_detail/get_product_detail_state_notifier_provider.dart';
import 'package:fluttertask/presentation/home_view/home_view.dart';
import 'package:fluttertask/presentation/home_view/widgets/curved_edges.dart';
import 'package:fluttertask/presentation/resources/assets_manage.dart';
import 'package:fluttertask/presentation/resources/colors.dart';
import 'package:fluttertask/presentation/resources/sizes.dart';
import 'package:fluttertask/presentation/resources/string_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:get/get.dart';

import '../resources/validators.dart';

class LoginView extends HookConsumerWidget {
  LoginView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header part ---------------------------
            ClipPath(
              clipper: TCustomCurvedWidgets(),
              child: Container(
                height: h * 0.35,
                color: AColors.primaryGreenColor,
                child: Center(
                  child: Image.asset(
                    ImageAssets.splashLogo,
                    scale: 4,
                  ),
                ),
              ),
            ),

            //----

            Container(
              // color: Colors.amber,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              //  height: h * 0.5,
              width: w,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.loginAccount,
                      style: const TextStyle(
                        color: AColors.mainTextColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      AppStrings.welcome,
                      style: const TextStyle(
                        color: AColors.mainTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: GSizes.spaceBtwSections,
                    ),
                    SizedBox(
                      //height: 50,
                      child: TextFormField(
                        controller: emailController,
                        validator: (value) => Vvalidator.VvalideEmail(value),
                        decoration: InputDecoration(
                          prefix: const Icon(
                            Icons.email_outlined,
                            color: AColors.mainTextColor,
                          ),
                          labelText: AppStrings.email,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AColors.mainTextColor,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: GSizes.spaceBtwItems,
                    ),
                    SizedBox(
                      // height: 50,
                      width: w,
                      child: TextFormField(
                        controller: passwordController,
                        validator: (value) =>
                            Vvalidator.validatePassword(value),
                        decoration: InputDecoration(
                          prefix: const Icon(
                            Icons.lock_open_outlined,
                            color: AColors.mainTextColor,
                          ),
                          labelText: AppStrings.password,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AColors.mainTextColor,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: GSizes.spaceBtwItems,
                    ),

                    Container(
                      alignment: Alignment.centerRight,
                      width: w,
                      child: Text(
                        AppStrings.forgetPassword,
                        style: const TextStyle(
                          color: AColors.mainTextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: GSizes.spaceBtwSections,
                    ),

                    // login Button -------------------------

                    InkWell(
                      onTap: () {
                        Get.off(
                          () => HomeView(),
                          //transition: Transition.downToUp,
                        );
                      },
                      child: Container(
                        height: 50,
                        width: w,
                        decoration: const BoxDecoration(
                          color: AColors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            AppStrings.login,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: GSizes.spaceBtwItems,
                    ),

                    Container(
                      alignment: Alignment.center,
                      width: w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.dontHaveAccount,
                            style: const TextStyle(
                              color: AColors.mainTextColor,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              AppStrings.registerNow,
                              style: const TextStyle(
                                color: AColors.mainTextColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: GSizes.spaceBtwItems,
                    ),

                    Container(
                      width: w,
                      decoration: BoxDecoration(
                          border: Border.all(color: AColors.grey),
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                          onPressed: () async {
                            ref
                                .read(getAllProductDetailStateNotifierProvider
                                    .notifier)
                                .signInWithGoogle();
                          },
                          icon: const Image(
                              width: GSizes.iconMd,
                              height: GSizes.iconMd,
                              image: AssetImage(
                                'assets/images/search.png',
                              ))),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
