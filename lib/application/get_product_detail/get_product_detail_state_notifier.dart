import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertask/application/get_product_detail/get_product_detail_state.dart';
import 'package:fluttertask/domain/core/core_failure.dart';
import 'package:fluttertask/domain/get_products_detail/i_get_product_detail_repository.dart';
import 'package:fluttertask/presentation/home_view/home_view.dart';
import 'package:fluttertask/presentation/resources/log_utils.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/failure.dart';
import '../../domain/core/i_local_repository.dart';

class GetAllProductDetailStateNotifier
    extends StateNotifier<GetProductDetailState> {
  GetAllProductDetailStateNotifier(
    this._localRepository,
    this._getAllProductDetailRepository,
  ) : super(
          GetProductDetailState.initial(),
        ) {
    _logUtils.log("init");
  }

  final GoogleSignIn googleSignIn = GoogleSignIn();

  static final LogUtils _logUtils = LogUtils(
    featureName: "Get Product Detail State Notifier",
    printLog: true,
  );

  final ILocalRepository _localRepository;
  final IGetProductDetailRepository _getAllProductDetailRepository;

  Future<void> signInWithGoogle() async {
    try {
      state = state.copyWith(
        responseFailure: none(),
      );

      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final User? user = userCredential.user;

      String? userEmail = user!.email;
    } catch (e) {
      state = state.copyWith(
        responseFailure:
            optionOf(Failure.core(CoreFailure.somethingWentWrong(e))),
      );
    }
  }

  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      state = state.copyWith(
        responseFailure: none(),
      );

      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: 'shiran@gmail.com', password: '1234');

      final User? user = userCredential.user;

      if (user != null) {
        String? userEmail = user.email;

        Get.off(() => HomeView());
      } else {
        throw Exception('Failed to register with email and password');
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage;

      switch (e.code) {
        case 'email-already-in-use':
          errorMessage = 'The email address is already in use.';
          break;
        case 'weak-password':
          errorMessage = 'The password is too weak.';
          break;
        case 'invalid-email':
          errorMessage = 'The email address is not valid.';
          break;
        default:
          errorMessage = 'Something went wrong. Please try again later.';
      }

      state = state.copyWith(
        responseFailure: optionOf(
            Failure.core(CoreFailure.somethingWentWrong(errorMessage))),
      );
    } catch (e) {
      state = state.copyWith(
        responseFailure:
            optionOf(Failure.core(CoreFailure.somethingWentWrong(e))),
      );
    }
  }

  // get All Data -------------------------------------------------------------

  Future<void> getAllProductDetail() async {
    _logUtils.log("get All Product Detail");

    state = state.copyWith(
      isLoading: true,
    );

    final getAllProductDetailSucesOrFailure =
        await _getAllProductDetailRepository.getProductDetail();

    _logUtils.log(
        "get All Country Data Suces Or Failure  $getAllProductDetailSucesOrFailure");

    getAllProductDetailSucesOrFailure.fold((failure) {
      _logUtils.log(":::::::::::::::::::   failure");
      state = state.copyWith(
        isLoading: false,
        responseFailure: none(),
        // responseFailure: optionOf(failure),
      );
    }, (response) {
      state = state.copyWith(
        isLoading: false,
        responseFailure: none(),
        productDetailDataList: response.products,
      );
      _logUtils.log(
          "::::::::::product Detail Data List:::::::::   ${state.productDetailDataList}");
    });
  }
}
