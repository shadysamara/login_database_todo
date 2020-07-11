import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:login_todo_database/providers/db_provider.dart';
import 'package:login_todo_database/ui/screens/main_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DBProvider>(
      create: (BuildContext context) {
        return DBProvider();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MainScreen(),
      ),
    );
  }
}

// class testHive extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           ValueListenableBuilder<Box<String>>(
//             valueListenable: HiveHelper.helper.tasksBox.listenable(),
//             builder: (context, value, child) {
//               return Text(value.values.toList().length.toString());
//             },
//           ),
//           RaisedButton(onPressed: () {
//             HiveHelper.helper.tasksBox.add('hello');
//           })
//         ],
//       ),
//     );
//   }
// }
