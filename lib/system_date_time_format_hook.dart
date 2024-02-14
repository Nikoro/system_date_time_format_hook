import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:system_date_time_format/system_date_time_format.dart';

/// Creates [Patterns] that will be automatically synchronized with the device's system settings.
Patterns useSystemDateTimeFormat(
    {@visibleForTesting SystemDateTimeFormat? format}) {
  return use(_SystemDateTimeFormatHook(format: format));
}

class _SystemDateTimeFormatHook extends Hook<Patterns> {
  const _SystemDateTimeFormatHook({this.format});

  final SystemDateTimeFormat? format;

  @override
  _SystemDateTimeFormatHookState createState() =>
      _SystemDateTimeFormatHookState();
}

class _SystemDateTimeFormatHookState
    extends HookState<Patterns, _SystemDateTimeFormatHook>
    with WidgetsBindingObserver {
  late final SystemDateTimeFormat systemDateTimeFormat;
  Patterns patterns = const Patterns();

  @override
  void initHook() {
    super.initHook();
    WidgetsBinding.instance.addObserver(this);
    systemDateTimeFormat = hook.format ?? SystemDateTimeFormat();
    _updatePatternsIfNeeded();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Patterns build(BuildContext context) {
    return patterns;
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      await _updatePatternsIfNeeded();
    }
  }

  Future<void> _updatePatternsIfNeeded() async {
    final patterns = await systemDateTimeFormat.getAllPatterns();
    if (this.patterns != patterns) {
      setState(() => this.patterns = patterns);
    }
  }
}
