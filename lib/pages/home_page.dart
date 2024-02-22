import 'package:flutter/material.dart';

import '../widgets/show_controllers.dart';
import '../widgets/show_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.cyan,
        margin: const EdgeInsets.all(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 16,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.green,
                  child: const ShowPanel(),
                )),
            const Expanded(
              flex: 1,
              child: ShowControllers(),
            ),
          ],
        ));
  }
}
