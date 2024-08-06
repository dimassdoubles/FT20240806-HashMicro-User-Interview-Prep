import 'package:flutter/material.dart';
import 'package:user_interview_prep/my_dialog.dart';
import 'package:user_interview_prep/my_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MySearchBar(),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context, builder: (context) => const MyDialog());
            },
            child: const Text("Show Dialog"),
          ),
        ],
      ),
    );
  }
}
