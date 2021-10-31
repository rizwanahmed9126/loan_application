import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/screens/splash_screen.dart';
import 'package:loan/viewModel/provider/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()),

      ],
      child: MaterialApp(

            title: 'Loan',
            color: Theme.of(context).backgroundColor,
            debugShowCheckedModeBanner: false,
            //locale: model.appLocal,
            navigatorKey: locator<NavigationService>().navigatorKey,
            theme: ThemeData(
              //fontFamily: ,
              //primaryColor: Color.fromRGBO(224, 69, 123, 1),
              // ignore: deprecated_member_use
              //accentColor: Color.fromRGBO(172, 182, 190, 1),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            onGenerateRoute: onGenerateRoute,
            initialRoute: signUpScreenRoute,
            // home: CartScreen(),
          ),
        //);
      // }),
    );
  }
}


