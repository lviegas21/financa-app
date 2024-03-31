import 'package:get/get.dart';

abstract class HomePresenter {
  RxBool get isLoading;
  Rx<String> get selectMeses;
}
