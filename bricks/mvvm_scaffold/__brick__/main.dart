import 'package:provider/provider.dart';
import 'model/user.dart';
import 'pages/auth/auth_vm.dart';
import 'pages/auth/auth_wrapper.dart';
import 'package:flutter/material.dart';
import 'utils/loader_view.dart';
import 'utils/notification_view.dart';
import 'routing/router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<User?>(
          create: (_) => AuthVm().user,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        builder: (context, child) {
          return Material(
            child: Stack(
              children: [child!, LoaderView(), NotificationView()],
            ),
          );
        },
        onGenerateRoute: router.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: AuthWrapper(),
      ),
    );
  }
}
