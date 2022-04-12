import 'package:flutter/material.dart';

part 'data.dart';

extension ThemeContext on BuildContext {
  AppThemeData get theme => AppTheme.of(this).theme;
}

class AppTheme extends StatefulWidget {
  const AppTheme({Key? key, required this.child}) : super(key: key);

  final Widget child;

  static _AppThemeState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<_AppThemeProvider>()!.state;

  @override
  _AppThemeState createState() => _AppThemeState();
}

class _AppThemeState extends State<AppTheme> {
  AppThemeData theme = LightThemeData();

  void setMode(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.system:
        if (MediaQuery.of(context).platformBrightness == Brightness.light) {
          theme = LightThemeData();
        } else {
          theme = DarkThemeData();
        }
        break;
      case ThemeMode.light:
        theme = LightThemeData();
        break;
      case ThemeMode.dark:
        theme = DarkThemeData();
        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return _AppThemeProvider(state: this, child: widget.child);
  }
}

class _AppThemeProvider extends InheritedWidget {
  const _AppThemeProvider({
    Key? key,
    required this.state,
    required Widget child,
  }) : super(key: key, child: child);

  final _AppThemeState state;

  @override
  bool updateShouldNotify(_AppThemeProvider oldWidget) => true;
}
