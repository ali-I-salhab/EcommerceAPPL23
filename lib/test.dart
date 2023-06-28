import 'package:ecommerceapp/core/functions/checkinternetconnection.dart';
import 'package:flutter/material.dart';

class Testfun extends StatefulWidget {
  const Testfun({super.key});

  @override
  State<Testfun> createState() => _TestfunState();
}

class _TestfunState extends State<Testfun> {
  @override
  var res;
  inittt() async {
    res = await checkinternetstatus();
    print(res);
  }

  @override
  void initState() {
    inittt();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},
              child: Text('test'),
            ),
          ],
        ),
      ),
    );
  }
}
