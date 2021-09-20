import 'dart:html';

import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';

class Logic {
  final url = '';
  final path = '';
  final filename = "New file";
  final Dio dio = new Dio();

  Future getPermission() async {
    PermissionStatus ps = await PermissionStatus.granted;
  }
}
