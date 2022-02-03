import 'package:choclist_web/router/route_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

// void configLoading() {
//   EasyLoading.instance..userInteractions = false;
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(828, 1792),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => GetMaterialApp(
        initialRoute: "/",
        getPages: RouteConfig.getPages,
        //... other code
        builder: (context, widget) {
          //add this line
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryIconTheme: IconThemeData(
            color: Colors.pink,
          ),
          primaryColor: Colors.pink,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.pink),
        ),
      ),
    );
  }
}
