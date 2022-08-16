import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_management/data_provider/pref_helper.dart';
import 'package:restaurant_management/mvc/module_name/views/views_name.dart';
import 'package:restaurant_management/utils/navigation_service.dart';
import 'package:restaurant_management/utils/styles/styles.dart';
import 'package:restaurant_management/constant/app_url.dart';
import 'package:restaurant_management/utils/enum.dart';
//localization
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//iOS localization is required to add this below
//code in dict tag in info.plist

// <key>CFBundleLocalizations</key>
// 	<array>
// 		<string>en</string>
// 		<string>sv</string>
// 	</array>

//Add this line in pubspec.yaml

//This line is added for localization 
 // flutter_localizations:
  //  sdk: flutter
   
//pls check pubspec.yaml
// generate: true

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  //Set Potraite Mode only
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

/// Make sure you always init shared pref first. It has token and token is need
/// to make API call
initServices() async {
   AppUrlExtention.setUrl(
    UrlLink.isDev,
  );

  await PrefHelper.init();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    return MaterialApp(
      title: 'restaurant_management',
      navigatorKey: Navigation.key,
      debugShowCheckedModeBanner: false,
//localization
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      locale: (PrefHelper.getLanguage() == 1)
          ? const Locale('en', 'US')
          : const Locale('bn', 'BD'),
      theme: ThemeData(
        //globally handle progress color using themeData class
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.green),
        textTheme: GoogleFonts.robotoMonoTextTheme(),
        primaryColor:KColor.primary.color,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary:KColor.secondary.color,
            ),
        primarySwatch: KColor.primary.color as MaterialColor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(size: 16),
          actionsIconTheme: IconThemeData(size: 16),
          backgroundColor: KColor.white.color,
          elevation: 0,
          titleTextStyle: GoogleFonts.poppins(
            color: KColor.divider.color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home:ViewsName(),
    );
  }
}

