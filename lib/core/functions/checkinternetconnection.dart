import 'dart:io';

checkinternetstatus() async {
  print("sssssssss");
  try {
    var result = await InternetAddress.lookup('www.google.com');

    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}
