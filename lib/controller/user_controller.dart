import 'package:dating/data/model/user.dart';
import 'package:dating/data/repository/user_repository.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final Rx<List<User>> _users = Rx<List<User>>([]);
  final UserRepository userRepository;

  UserController({required this.userRepository});

  List<User> get users => _users.value;
  @override
  void onReady() {
    super.onReady();
    _fetchData();
  }

  void _fetchData() async {
    userRepository.getUserData().then((data) => _users.value = data).then((_) {
      print(_users.value);
    });
  }
}
