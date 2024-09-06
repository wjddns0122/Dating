import 'package:carousel_slider/carousel_options.dart';
import 'package:dating/data/model/user.dart';
import 'package:dating/data/repository/user_repository.dart';
import 'package:dating/data/service/heart_service.dart';
import 'package:dating/utils/enums.dart';
import 'package:dating/utils/show_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController with UseToast {
  final HeartService heartService;
  final Rxn<List<User>> _users = Rxn<List<User>>([]);
  final Rx<Status> _status = Rx<Status>(Status.loading);
  final UserRepository userRepository;
  final Rxn<User> _myInfo = Rxn<User>();
  final RxInt _imageIndex = 0.obs;
  static UserController get to => Get.find();

  UserController({
    required this.userRepository,
    required this.heartService,
  });

  List<User>? get users => _users.value;
  User? get myInfo => _myInfo.value;
  int get imageIndex => _imageIndex.value;

  void setMyInfo(User user) {
    debugPrint(user.image);
    _myInfo(user);
    _myInfo.refresh();
  }

  bool get isLoading => (_status.value.name == "loading") ? true : false;

  void changeImageIndex(int index, CarouselPageChangedReason reason) {
    _imageIndex(index);
  }

  void postHeartAdd(int id) async {
    await heartService.postHeart(id);
    showToast('상대방에게 좋아요를 보냈습니다.');
  }
}
