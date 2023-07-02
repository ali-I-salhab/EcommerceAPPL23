import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.shopping_basket_outlined),
      ),
      backgroundColor: Colors.amber,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          children: [
            Row(
              children: [
                MaterialButton(
                  onPressed: null,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.home_max_outlined), Text('home')],
                  ),
                ),
                MaterialButton(
                  onPressed: null,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.home_max_outlined), Text('home')],
                  ),
                )
              ],
            ),
            Spacer(),
            Row(
              children: [
                MaterialButton(
                  onPressed: null,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.home_max_outlined), Text('home')],
                  ),
                ),
                MaterialButton(
                  onPressed: null,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.home_max_outlined), Text('home')],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Text('home scren'),
      ),
    );
  }
}
