import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:kaiteki/account_container.dart';
import 'package:kaiteki/api/api_type.dart';
import 'package:kaiteki/app_colors.dart';
import 'package:kaiteki/ui/screens/auth/login_screen.dart';
import 'package:mdi/mdi.dart';
import 'package:provider/provider.dart';

class AddAccountScreen extends StatefulWidget {
  AddAccountScreen({Key key}) : super(key: key);

  @override
  _AddAccountScreenState createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends State<AddAccountScreen> {
  @override
  Widget build(BuildContext context) {
    var boldTextStyle = TextStyle(fontWeight: FontWeight.bold);
    var container = Provider.of<AccountContainer>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Select instance type")
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 8.0),
        children: [
          ListTile(
            leading: Icon(Mdi.earth),
            title: Text("Automatic", style: boldTextStyle),
            subtitle: Text("Kaiteki will send various kinds of requests trying to see which one works.", style: boldTextStyle),
            enabled: false,
            isThreeLine: true,
          ),
          Divider(),
          ListTile(
            leading: Image.asset(
              "assets/icons/mastodon.png",
              height: 24,
            ),
            title: Text("Mastodon"),
            enabled: false,
            onTap: () => Navigator.push(
              context,
              getRoute(
                LoginScreen(
                  image: AssetImage("assets/icons/mastodon.png"),
                  color: AppColors.mastodonPrimary,
                  backgroundColor: AppColors.mastodonSecondary,
                  onLogin: container.createAdapter(ApiType.Mastodon).login,
                )
              )
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/icons/pleroma.png",
              height: 24,
            ),
            title: Text("Pleroma"),
            onTap: () => Navigator.push(
              context,
              getRoute(
                LoginScreen(
                  image: AssetImage("assets/icons/pleroma.png"),
                  color: AppColors.pleromaPrimary,
                  backgroundColor: AppColors.pleromaSecondary,
                  onLogin: container.createAdapter(ApiType.Pleroma).login,
                )
              )
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/icons/misskey.png",
              height: 24,
            ),
            title: Text("Misskey"),
            onTap: () => Navigator.push(
              context,
              getRoute(
                LoginScreen(
                  image: AssetImage("assets/icons/misskey.png"),
                  color: AppColors.misskeyPrimary,
                  backgroundColor: AppColors.misskeySecondary,
                  onLogin: container.createAdapter(ApiType.Misskey).login,
                )
              )
            ),
          ),
          Divider(),
          Opacity(
            opacity: 0.75,
            child: ListTile(
              leading: Icon(Mdi.earthRemove),
              title: Text("Is something missing?"),
              subtitle: Text("Tap here to request support for a different backend."),
            ),
          )
        ],
      )
    );
  }

  PageRoute getRoute(LoginScreen screen) => PageRouteBuilder(
    pageBuilder: (_, __, ___) => screen,
    transitionsBuilder: (_, anime, anime2, child) => SharedAxisTransition(
      child: child,
      animation: anime,
      secondaryAnimation: anime2,
      transitionType: SharedAxisTransitionType.horizontal,
    ),
  );
}