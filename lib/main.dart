import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sporket/pages/contactus.dart';
import 'package:sporket/pages/contest.dart';
import 'package:sporket/pages/forgotpass.dart';
import 'package:sporket/pages/login.dart';
import 'package:sporket/pages/privacypolicy.dart';
import 'package:sporket/pages/security.dart';
import 'package:sporket/pages/signup.dart';
import 'package:sporket/pages/home.dart';
import 'package:sporket/pages/termscondition.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sporket/provider/google_sign_in.dart';
import 'edit_profile_page.dart';
import 'pages/wallet.dart';

class PushNotification {
  PushNotification({
    this.title,
    this.body,
  });
  String? title;
  String? body;
}

bool isAuthAllowed = false;

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  late FirebaseMessaging _messaging;

  _messaging = FirebaseMessaging.instance;

  _messaging.getToken().then((token) {
    print("Firebase Token Received $token");
  });

  NotificationSettings settings = await _messaging.requestPermission(
    alert: true,
    badge: true,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {});

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  } else {
    print('User declined or has not accepted permission');
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sporket',
        initialRoute: (isAuthAllowed ? '/home' : '/'),
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Login(),
        routes: {
          '/ ': (context) => Login(),
          '/signup': (context) => Signup(),
          '/forgotpass': (context) => Forgotpass(),
          '/home': (context) => Home(),
          '/privacypolicy': (context) => PrivacyPolicy(),
          '/termscondition': (context) => TermsnCondition(),
          '/wallet': (context) => Wallet(),
          '/contest': (context) => Contest(),
          '/contactus': (context) => EmailUsScreen(),
          '/security': (context) => Security(),
          '/profileedit': (context) => EditUserProfile()
        },
      ),
    );
  }
}
