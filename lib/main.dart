import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      darkTheme: ThemeData.dark().copyWith(
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          shadowColor: kDarkColorScheme.onPrimaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          foregroundColor: kDarkColorScheme.onPrimaryContainer,
        )),

        //  ThemeData.dark(),
      ),
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
            titleTextStyle: TextStyle(
              color: kColorScheme.primaryContainer,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            shadowColor: kColorScheme.onPrimaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kColorScheme.onSecondaryContainer,
                ),
              )),
      // themeMode: ThemeMode.dark,
      home: const Expenses(),
    );
  }
}

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 68, 255));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark, seedColor: Color.fromARGB(255, 5, 55, 125));
// void main() {
//   runApp(
//     MaterialApp(
//       darkTheme: ThemeData.dark().copyWith(
//         cardTheme: const CardTheme().copyWith(
//           color: kDarkColorScheme.secondaryContainer,
//           shadowColor: kDarkColorScheme.onPrimaryContainer,
//           margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: kDarkColorScheme.primaryContainer,
//             foregroundColor: kDarkColorScheme.onPrimaryContainer,
//           ),
//         ),
//         textButtonTheme: TextButtonThemeData(
//             style: TextButton.styleFrom(
//           foregroundColor: kDarkColorScheme.onPrimaryContainer,
//         )),

//         //  ThemeData.dark(),
//       ),
//       theme: ThemeData().copyWith(
//           colorScheme: kColorScheme,
//           appBarTheme: const AppBarTheme().copyWith(
//             backgroundColor: kColorScheme.onPrimaryContainer,
//             foregroundColor: kColorScheme.primaryContainer,
//           ),
//           cardTheme: const CardTheme().copyWith(
//             color: kColorScheme.secondaryContainer,
//             shadowColor: kColorScheme.onPrimaryContainer,
//             margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//           ),
//           elevatedButtonTheme: ElevatedButtonThemeData(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: kColorScheme.primaryContainer,
//             ),
//           ),
//           textTheme: ThemeData().textTheme.copyWith(
//                 titleLarge: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: kColorScheme.onSecondaryContainer,
//                 ),
//               )),
//       // themeMode: ThemeMode.dark,
//       home: const Expenses(),
//     ),
//   );
// }
