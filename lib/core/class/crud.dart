import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/core/class/statusrequest.dart';
import 'package:http/http.dart' as http;

import '../functions/checkinternetconnection.dart';

class Crud {
  Future<Either<Statusrequest, Map>> postdata(String url, Map data) async {
    try {
      if (await checkinternetstatus()) {
        // internet connection
        var response = await http.post(Uri.parse(url), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          //get response from server
          Map responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          //no response from server
          return const Left(Statusrequest.serverfailure);
        }
      } else {
        //no internet connection
        return const Left(Statusrequest.offlinefailure);
      }
    } catch (_) {
      return const Left(Statusrequest.serverfailure);
    }
  }
}
