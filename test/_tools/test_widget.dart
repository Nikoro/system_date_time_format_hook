import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:system_date_time_format/system_date_time_format.dart';
import 'package:system_date_time_format_hook/system_date_time_format_hook.dart';

class TestWidget extends HookWidget {
  const TestWidget({required this.format, super.key});

  final SystemDateTimeFormat format;

  @override
  Widget build(BuildContext context) {
    final patterns = useSystemDateTimeFormat(format: format);

    return Column(
      children: [
        Text(patterns.datePattern ?? ''),
        Text(patterns.mediumDatePattern ?? ''),
        Text(patterns.longDatePattern ?? ''),
        Text(patterns.fullDatePattern ?? ''),
        Text(patterns.timePattern ?? ''),
      ],
    );
  }
}
