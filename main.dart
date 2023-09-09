import 'package:flutter/material.dart';
import 'package:my_amazon_app/constants/global_var.dart';
import 'package:my_amazon_app/features/Screens/auth_screen.dart';
import 'package:my_amazon_app/features/services/auth_service.dart';
import 'package:my_amazon_app/home/screens/home_screen.dart';
import 'package:my_amazon_app/provider/user_provider.dart';
import 'package:my_amazon_app/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      /*MultiProvider(//define to my app iuse provider
      providers: [
    ChangeNotifierProvider(create: (context) => Userprovider()),
  ], child:*/
      const MyApp()); //));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final AuthService authService = AuthService();
  @override
  void initState() {
    super.initState();
    authService.signUserData(context as BuildContext);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'my amazon app',
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            primary: GlobalVar.secondaryColor,
          ),
          scaffoldBackgroundColor: GlobalVar.backgroundColor,
          appBarTheme: const AppBarTheme(
            elevation: 0,
          ),
          iconTheme: const IconThemeData(
            color: Colors.black12,
          ),
        ),
        onGenerateRoute: ((settings) => generateRoute(settings)),
        home: /* Provider.of<Userprovider>(context).user.token.isNotEmpty
            ? MyHomeScreen()*/
            /* :*/ AuthScreen());
  }
}
