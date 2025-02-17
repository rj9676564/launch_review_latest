# launch_review_latest

[![pub package](https://img.shields.io/pub/v/launch_review_latest.svg)](https://pub.dartlang.org/packages/launch_review_latest)

A Flutter plugin to assist in leaving user reviews/ratings in Google Play Store and Apple App Store.

This package is update for launch_review package

> *NOTE:* Please feel free to send a PR to add more functionalities.

### iOS

For iOS 9 and above, your `Info.plist` file  __MUST__ have the following:
```
<key>LSApplicationQueriesSchemes</key>
<array>
        <string>itms-beta</string>
        <string>itms</string>
</array>
```

## Usage
To use this plugin, add `launch_review_latest` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Example

Import the library via
``` dart
import 'package:launch_review_latest/launch_review_latest.dart'; 
```

Then invoke the static `launch` method of `LaunchReviewLatest` anywhere in your Dart code. If no arguments are provided, it will consider the current package.

``` dart
LaunchReviewLatest.launch();
```

To open the App Store page for any other applications, you can pass the app Id.

``` dart
LaunchReviewLatest.launch(androidAppId: "com.mohamednagdy.allquran",
                    iOSAppId: "6740764793");
```

## iOS Specifics
Set writeReview to false to only show the app store page. Used only in iOS.

``` dart
LaunchReviewLatest.launch(writeReview: false,iOSAppId: "585027354");
```
