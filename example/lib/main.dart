import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:system_date_time_format_hook/system_date_time_format_hook.dart';
import 'package:system_date_time_format_hook_example/fallbacks.dart';
import 'package:system_date_time_format_hook_example/widgets/widgets.dart';

void main() {
  runApp(const App());
}

class App extends HookWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final patterns = useSystemDateTimeFormat();

    final datePattern = patterns.datePattern ?? Fallbacks.datePattern;
    final mediumDatePattern =
        patterns.mediumDatePattern ?? Fallbacks.mediumDatePattern;
    final longDatePattern =
        patterns.longDatePattern ?? Fallbacks.longDatePattern;
    final fullDatePattern =
        patterns.fullDatePattern ?? Fallbacks.fullDatePattern;
    final timePattern = patterns.timePattern ?? Fallbacks.timePattern;

    final rows = {
      'Short date format pattern:': datePattern,
      'Medium date format pattern:': mediumDatePattern,
      'Long date format pattern:': longDatePattern,
      'Full date format pattern:': fullDatePattern,
      'Time format pattern:': timePattern,
    };

    return MaterialApp(
      home: Scaffold(
        appBar: const Toolbar(),
        body: Body(
          children: rows.entries
              .map((e) => RowItem(title: e.key, value: e.value))
              .toList(),
        ),
      ),
    );
  }
}
