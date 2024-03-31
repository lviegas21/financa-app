import 'package:financa/ui/home/home_page.dart';
import 'package:financa/ui/home/home_presenter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_presenter_factory.dart';

Widget makeHomePageFactory() {
  final presenter = Get.put<HomePresenter>(makeHomePresenter());
  return HomePage(homepresenter: presenter);
}
