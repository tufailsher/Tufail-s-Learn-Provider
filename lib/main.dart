import 'package:flutter/material.dart';
import 'package:provider_project/Screens/AddNotifierItem.dart';

import 'Screens/FirstRoute.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => AddNotifierItem()
      )
    ]);
    // ChangeNotifierProvider(
    //   create: (BuildContext context){
    //     return AddNotifierItem();
    //   },
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //       home: FirstRoute(),
    //     ),
    // );
  }
}
