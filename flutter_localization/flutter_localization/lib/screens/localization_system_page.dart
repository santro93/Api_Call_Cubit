import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class LocalizationSystemPage extends StatefulWidget {
  const LocalizationSystemPage({Key? key}) : super(key: key);

  @override
  State<LocalizationSystemPage> createState() => _LocalizationSystemPageState();
}

class _LocalizationSystemPageState extends State<LocalizationSystemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Localization'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.language,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(AppLocalizations.of(context)!.helloWorld,
                style: TextStyle(fontSize: 36)),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.hello('Sofy'),
                    style: TextStyle(fontSize: 36)),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 64.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
