
import 'package:dartz/dartz.dart';

import '../../../../core/network/network.dart';
import '../models/users_list_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, UsersListModel>> getUserDetails(
      {required String userId});

  Future<Either<Failure, List<UsersListModel>>> getUserList();    
}
