import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../core/network/network.dart';

class HomeApi {
  Future getUserDetailsApi({required String userId}) async {
    try {
      Response response = await DioProviderImpl().get(
        '${ApiEndpoints.userDetail}/$userId',
      );
      return response;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future getUserListApi() async {
    try {
      Response response = await DioProviderImpl().get(
        ApiEndpoints.userDetail,
      );
      return response;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future deleteUserApi({required String userId}) async {
    try {
      Response response = await DioProviderImpl().delete(
        '${ApiEndpoints.userDetail}/userId',
      );
      return response;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
