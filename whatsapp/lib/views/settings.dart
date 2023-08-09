import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/views/theme_changer.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Column(children: [
        ListTile(
          leading: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D4E03AQHzRINocPX14w/profile-displayphoto-shrink_800_800/0/1682951348583?e=2147483647&v=beta&t=kBuIIUcDSar-OshkYnNqaRJfuPliu9gTXayP4Eek3cM')),
          title: Text(
            'Ausaf Gill',
            style: Theme.of(context).textTheme.copyWith().titleLarge,
          ),
          subtitle: Text(
            'Busy',
            style: Theme.of(context).textTheme.copyWith().bodyMedium,
          ),
        ),
        RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
            value: ThemeMode.light,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme),
        RadioListTile(
            title: Text('Dark Mode'),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme)
      ]),
    );
  }
}
