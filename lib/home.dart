import 'package:flutter/material.dart';
import 'package:multilangdemo/languageChangeProvider.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LanguageChangeProvider>(context);
    return Scaffold(
        appBar: AppBar(title: Text(S.of(context).appbarText), elevation: 0.0),
        body: Center(
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              ElevatedButton(
                  onPressed: () {
                    provider.changeLocale('de');
                  },
                  child: Text("Germany")),
              const SizedBox(height: 25.0),
              ElevatedButton(
                  onPressed: () {
                    provider.changeLocale('en');
                  },
                  child: Text("English")),
              const Expanded(child: SizedBox()),
            ],
          ),
        ));
  }
}
