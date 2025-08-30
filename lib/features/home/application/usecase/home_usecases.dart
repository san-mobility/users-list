import 'package:dartz/dartz.dart';

import '../../../../core/network/network.dart';
import '../../domain/models/users_list_model.dart';
import '../../domain/repositories/home_repo.dart';

class HomeUsecase {
  final HomeRepository homeRepository;

  const HomeUsecase(this.homeRepository);

  Future<Either<Failure, UsersListModel>> getUserDetails(
      {required String userId}) async {
    return homeRepository.getUserDetails(userId: userId);
  }

  Future<Either<Failure, List<UsersListModel>>> getUsersList() async{
    return homeRepository.getUserList();
  }
}
