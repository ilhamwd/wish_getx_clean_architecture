import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wish_gym/components/molecule/inherited_system_widget.dart';
import 'package:wish_gym/infrastructure/navigation/routes.dart';
import 'package:wish_gym/infrastructure/system.dart';

import 'infrastructure/navigation/navigation.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedSystemBuilder(builder: (context, system) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FutureBuilder<System>(
            future: system.init(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                // Your splash screen
                return const Center(
                    child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Placeholder(),
                ));
              }

              return GetMaterialApp(
                initialRoute: Routes.home,
                getPages: Nav.routes,
              );
            }),
      );
    });
  }
}
