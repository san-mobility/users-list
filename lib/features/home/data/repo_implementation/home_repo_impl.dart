import 'package:bus_booking/features/home/data/repository/home_api.dart';
import 'package:bus_booking/features/home/domain/models/users_list_model.dart';
import 'package:dio/dio.dart';
import '../../../../common/common.dart';
import '../../../../core/network/exceptions.dart';
import '../../../../core/network/network.dart';
import '../../domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeApi homeApi;

  HomeRepositoryImpl(this.homeApi);

  @override
  Future<Either<Failure, UsersListModel>> getUserDetails(
      {required String userId}) async {
    UsersListModel userDetailsResponseModel;
    try {
      Response response =
          await homeApi.getUserDetailsApi(userId: userId);
      printWrapped('Get User Response : ${response.data}');
      if (response.data == null || response.data == '') {
        return Left(GetDataFailure(message: 'User bad request'));
      } else if (response.data.toString().contains('error')) {
        return Left(GetDataFailure(message: response.data['error']));
      } else {
        if (response.statusCode == 400 || response.statusCode == 401) {
          return Left(GetDataFailure(message: 'logout',statusCode: response.statusCode));
        } else if (response.statusCode == 429) {
          return Left(GetDataFailure(message: 'Too many attempts'));
        } else {
          userDetailsResponseModel =
              UsersListModel.fromJson(response.data);
        }
      }
    } on FetchDataException catch (e) {
      return Left(GetDataFailure(message: e.message));
    } on BadRequestException catch (e) {
      return Left(InPutDataFailure(message: e.message));
    }

    return Right(userDetailsResponseModel);
  }

  @override
  Future<Either<Failure, List<UsersListModel>>> getUserList() async {
    List<UsersListModel> userListResponseModel;
    try {
      Response response =
          await homeApi.getUserListApi();
      printWrapped('Get User List Response : ${response.data}');
      if (response.data == null || response.data == '') {
        return Left(GetDataFailure(message: 'User bad request'));
      } else if (response.data.toString().contains('error')) {
        return Left(GetDataFailure(message: response.data['error']));
      } else {
        if (response.statusCode == 400 || response.statusCode == 401) {
          return Left(GetDataFailure(message: 'logout',statusCode: response.statusCode));
        } else if (response.statusCode == 429) {
          return Left(GetDataFailure(message: 'Too many attempts'));
        } else {
          userListResponseModel =
              usersListModelFromJson(response.data);
        }
      }
    } on FetchDataException catch (e) {
      return Left(GetDataFailure(message: e.message));
    } on BadRequestException catch (e) {
      return Left(InPutDataFailure(message: e.message));
    }

    return Right(userListResponseModel);
  }


  @override
  Future<Either<Failure, dynamic>> deleteUser(
      {required String userId}) async {
    dynamic userDetailsResponseModel;
    try {
      Response response =
          await homeApi.deleteUserApi(userId: userId);
      printWrapped('Get User Response : ${response.data}');
      if (response.data == null || response.data == '') {
        return Left(GetDataFailure(message: 'User bad request'));
      } else if (response.data.toString().contains('error')) {
        return Left(GetDataFailure(message: response.data['error']));
      } else {
        if (response.statusCode == 400 || response.statusCode == 401) {
          return Left(GetDataFailure(message: 'logout',statusCode: response.statusCode));
        } else if (response.statusCode == 429) {
          return Left(GetDataFailure(message: 'Too many attempts'));
        } else {
          userDetailsResponseModel =
              UsersListModel.fromJson(response.data);
        }
      }
    } on FetchDataException catch (e) {
      return Left(GetDataFailure(message: e.message));
    } on BadRequestException catch (e) {
      return Left(InPutDataFailure(message: e.message));
    }

    return Right(userDetailsResponseModel);
  }
}
