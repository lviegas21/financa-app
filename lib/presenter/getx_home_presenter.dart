import 'package:financa/ui/home/home_presenter.dart';
import 'package:get/get.dart';

class GetxHomePresenter extends GetxController implements HomePresenter {
  @override
  RxBool isLoading = false.obs;

  @override
  Rx<String> selectMeses = 'Janeiro'.obs;
}
