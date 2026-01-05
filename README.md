<p align="center">
  <a href="https://pub.dev/packages/system_date_time_format_hook"><img src="https://raw.githubusercontent.com/nikoro/system_date_time_format_hook/main/logo/logo.png" width="600"/></a>
</p>
<h2 align="center">
  A <a href="https://pub.dev/packages/flutter_hooks" target="_blank">flutter hook</a> for <a href="https://pub.dev/packages/system_date_time_format" target="_blank">system_date_time_format</a> plugin
</h2>

<p align="center">
  <a href="https://pub.dev/packages/system_date_time_format_hook">
    <img alt="Pub Package" src="https://tinyurl.com/5cw9f9fm">
  </a>
  <a href="https://github.com/Nikoro/system_date_time_format_hook/actions">
    <img alt="Build Status" src="https://img.shields.io/github/actions/workflow/status/Nikoro/system_date_time_format_hook/ci.yaml?label=build">
  </a>
  <a href="https://codecov.io/gh/Nikoro/system_date_time_format_hook">
    <img alt="Code Coverage" src="https://codecov.io/gh/Nikoro/system_date_time_format_hook/branch/main/graph/badge.svg">
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img alt="MIT License" src="https://tinyurl.com/3uf9tzpy">
  </a>
    <img alt="Android support ✓" src="https://img.shields.io/badge/%E2%9C%93-grey?logo=android">
    <img alt="iOS support ✓" src="https://img.shields.io/badge/%E2%9C%93-grey?logo=ios">
    <img alt="macOS support ✓" src="https://tinyurl.com/kka6pu4c">
    <img alt="windows support ✓" src="https://tinyurl.com/3heeby4v">
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
    final mediumDatePattern = patterns.mediumDatePattern; // Not on Windows & Linux
    final longDatePattern = patterns.longDatePattern;
    final fullDatePattern = patterns.fullDatePattern;     // Not on Windows & Linux
    final timePattern = patterns.timePattern;

    print(datePattern);       // e.g. "M/d/yy"
    print(mediumDatePattern); // e.g. "MMM d,y"
    print(longDatePattern);   // e.g. "MMMM d,y"
    print(fullDatePattern);   // e.g. "EEEE, MMMM d, y"
    print(timePattern);       // e.g. "HH:mm"

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

In order to use this plugin on web app you need to add `system_date_time_format.js` script to your `index.html`.

**From version 1.3.1 and above**, the preferred way is to use the local asset:
```html
<script src="./assets/packages/system_date_time_format/web/system_date_time_format.min.js"></script>
```

Alternatively, you can still use the CDN link:
```html
<script src="https://cdn.jsdelivr.net/gh/Nikoro/system_date_time_format@main/web/system_date_time_format.min.js"></script>
```

index.html

```html
<!DOCTYPE html>
<html>
<head>
    <!--...-->
    <script src="./assets/packages/system_date_time_format/web/system_date_time_format.min.js"></script>
</head>
<body>
<!--...-->
</body>
</html>
```
