import 'package:dating/data/model/user.dart';
import 'package:dating/data/repository/user_repository.dart';
import 'package:dating/utils/status_enum.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final Rx<List<User>> _users = Rx<List<User>>([]);
  final Rx<Status> _status = Rx<Status>(Status.LOADING);
  final UserRepository userRepository;
  final Rxn<User> _myInfo = Rxn<User>();

  UserController({required this.userRepository});

  Status get status => _status.value;
  List<User> get users => _users.value;
  User? get myInfo => _myInfo.value;
  @override
  void onReady() {
    super.onReady();
    fetchData();
    searchMyInfo();
  }

  Future<void> fetchData() async {
    _status(Status.LOADING);
    userRepository.getUserData().then((data) {
      _users.value = data;
      _status(Status.LOADED);
    }).onError((error, stackTrace) {
      _status(Status.ERROR);
      print(error);
      print(stackTrace);
    });
  }

  void searchMyInfo() {
    userRepository.searchMyInfo().then((data) {
      _myInfo.value = data;
    });
  }
}
