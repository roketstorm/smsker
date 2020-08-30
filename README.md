![](https://github.com/roketstorm/smsker/blob/master/smskerlogo.png)
# Smsker

Send SMS within the Flutter application.

- **Android** sender based on **SmsManager**
- **iOS** sender based on **MFMessageComposeViewController**

#  🏰 Usage

Import `package:smsker/smsker.dart`, call `sendSms()` within `async` method:

```dart
import 'package:smsker/smsker.dart';

_sendMessage() async {
    await Smsker.sendSms(
        phone: "81234567890", 
        message: "Link! Wake Up!");
}

RaisedButton(
    child: Text("Save the Kingdom!"),
    onPressed: () {
        _sendMessage();
    }
)
```

# 🛡️ Permissions

Don't forget to add **Android** `SEND_SMS` permission to your **AndroidManifest.xml**
```xml
<uses-permission android:name="android.permission.SEND_SMS" />
```

# 🐞 Known Issues

On **iOS** after showing modal window of **MFMessageComposeViewController** system generates new view under top container. That is what for you need additional top-down swipe to return to Flutter application.

