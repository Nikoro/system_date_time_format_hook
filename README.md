<p align="center">
  <a href="https://pub.dev/packages/system_date_time_format_hook"><img src="https://raw.githubusercontent.com/nikoro/system_date_time_format_hook/main/logo/logo.png" width="600"/></a>
</p>
<h2 align="center">
  A <a href="https://pub.dev/packages/flutter_hooks">hook</a> for <a href="https://pub.dev/packages/system_date_time_format">system_date_time_format</a> plugin
</h2>

<p align="center">
  <a href="https://pub.dev/packages/system_date_time_format_hook">
    <img alt="Pub Package" src="http://tinyurl.com/5cw9f9fm">
  </a>
  <a href="https://github.com/Nikoro/system_date_time_format/actions">
    <img alt="Build Status" src="https://github.com/Nikoro/system_date_time_format_hook/actions/workflows/build.yaml/badge.svg">
  </a>
  <a href="https://codecov.io/gh/Nikoro/system_date_time_format">
    <img alt="Code Coverage" src="https://codecov.io/gh/Nikoro/system_date_time_format_hook/branch/main/graph/badge.svg">
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img alt="MIT License" src="https://tinyurl.com/3uf9tzpy">
  </a>
    <img alt="Android support ✓" src="https://img.shields.io/badge/%E2%9C%93-grey?logo=android">
    <img alt="iOS support ✓" src="https://img.shields.io/badge/%E2%9C%93-grey?logo=ios">
    <img alt="macOS support ✓" src="https://tinyurl.com/kka6pu4c">
    <img alt="windows support ✓" src="https://img.shields.io/badge/%E2%9C%93-grey?logo=windows">
    <img alt="linux support ✓" src="https://img.shields.io/badge/%E2%9C%93-grey?logo=linux">
    <img alt="web support ✓" src="https://img.shields.io/badge/web%20%E2%9C%93-grey">
</p>

---
## Why system_date_time_format_hook?

Flutter does not support retrieving date and time format patterns based on the user's system
settings out of the box. That's why [`system_date_time_format`](https://pub.dev/packages/system_date_time_format) plugin was created. 


However, if you already know and use [flutter_hooks](https://pub.dev/packages/flutter_hooks) in your project you can use `system_date_time_format_hook` to get
date and time format patterns for consistent formatting in your Flutter app with ease:

Example:
```dart
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:system_date_time_format_hook/system_date_time_format_hook.dart';

class App extends HookWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final patterns = useSystemDateTimeFormat();

    final datePattern = patterns.datePattern;
    final timePattern = patterns.timePattern;

    print(datePattern); // e.g. "M/d/yy"
    print(timePattern); // e.g. "HH:mm"

    return const MaterialApp(
      home: Scaffold(),
    );
  }
}
```
> **Note**
>
> `system_date_time_format_hook` will automatically sync date & time format patterns even if user changes them
> in the device system settings while your app is running.

### Web

In order to use this plugin on web app you need to add `system_date_time_format.js` script to your `index.html`:
```html
<src="https://cdn.jsdelivr.net/gh/Nikoro/system_date_time_format@main/web/system_date_time_format.min.js"></script>
```
index.html

```html
<!DOCTYPE html>
<html>
<head>
    <!--...-->
    <src="https://cdn.jsdelivr.net/gh/Nikoro/system_date_time_format@main/web/system_date_time_format.min.js"></script>
</head>
<body>
<!--...-->
</body>
</html>
```
