import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertask/application/get_product_detail/get_product_detail_state_notifier_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

import '../home_view/home_view.dart';
import '../resources/assets_manager.dart';
import '../resources/colors.dart';

class SplashView extends HookConsumerWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(Duration.zero, () {
        //  Locale myLocale = Localizations.localeOf(context);
        ref
            .read(getAllProductDetailStateNotifierProvider.notifier)
            .getAllProductDetail();
      });
      return;
    }, []);

    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: AColors.primaryGreenColor,
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          debugPrint("On End");
        },
        childWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Center(
                child: Image.asset(
                  ImageAssets.splashLogo,
                  scale: 4,
                ),
              ),
            ),
          ],
        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        nextScreen: const HomeView(),
      ),
    );
  }
}
