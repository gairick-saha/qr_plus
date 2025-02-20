# qr_plus

[![pub package][pub_badge]][pub_badge_link]
[![License][license_badge]][license_badge_link]
[![style: Mankeli analysis][style_badge]][style_badge_link]
![analysis & test][analysis_and_test]


[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/mankeli)

An advanced all-in-one QR code package that provides multiple layers of security. This package acts as a wrapper around some of the most popular QR-code related packages. It uses [qr_flutter][qr_flutter_link] for rendering the QR-codes and [mobile_scanner][mobile_scanner_link] for reading the QR-codes.


![Example gif][paranoid_fullscreen]

_An example QR code rendered with QrPlusMode.paranoid_

## Platform support
## Reader
| Android | iOS | macOS | Web | Linux | Windows |
|---------|-----|-------|-----|-------|---------|
| ✔       | ✔   | ✔     | ✔   | :x:   | :x:     |

## Renderer
| Android | iOS | macOS | Web | Linux | Windows |
|---------|-----|-------|-----|-------|---------|
| ✔       | ✔   | ✔     | ✔   | ✔     | ✔       |

## Motivation
In today's world, QR codes are used for a wide range of purposes, from making payments to accessing secure information. However, the ease of use and convenience offered by QR codes also makes them vulnerable to malicious attacks. To address these security concerns, QR Plus provides multiple layers of security, each fixing a single security vulnerability from the previous layer, to ensure that your data is safe and sound.

For example, consider a scenario where you're organizing a scavenger hunt event and you want to ensure that each team's progress is recorded accurately and fairly. The teams will scan QR codes at various locations to receive points. To prevent cheating, you need a solution that ensures that each team only gets points for the location they have actually visited. This, and plenty of other similar use-cases, is why we created qr_plus; To make QR-codes safe without having to write a ton of own custom logic!

## Get started (recommended settings)
**IMPORTANT:** You need to have the same security mode on BOTH the reader and renderer, otherwise the reader won't accept the data.

### 1. Configure platform
Since this package is a wrapper around [mobile_scanner][mobile_scanner_link], please follow the steps for platform specific configuration from their documentation.
### 2. Add renderer
```dart
QrPlusRenderer(
    data: 'https://youtu.be/dQw4w9WgXcQ',
    mode: const QrPlusMode.snowden(
        encryptionKey: '<your-encryption-key>', // Your encryption key from .env. See https://pub.dev/packages/flutter_dotenv
    ),
),
```
### 3. Add reader
```dart
QrPlusReader(
    mode: const QrPlusMode.snowden(
        encryptionKey: '<your-encryption-key>', // Your encryption key from .env. See https://pub.dev/packages/flutter_dotenv
    ),
    onData: (data, authenticity) {
        /// Handle the data
    },
),
```

### 4. You're all set!
Enjoy your new safe QR-codes.

## Multiple layers of security
QR Plus offers multiple layers of security, each fixing a single security vulnerability from the previous layer. As you climb up the layers, the QR-codes become more and more secure. Here are the security layers within this package, from least to most secure:
### **1. QrPlusMode.plain**
This layer does not contain any security whatsoever.

### **2. QrPlusMode.safe**
#### *Problem*
A malicious user could screenshot the QR-code. In the scenario described in the Motivation section, a user could show a screenshot of a QR-code to a referee, which would give points to another user instead of the one who shows the QR-code.

#### *Solution*
This layer splits the data into multiple pieces and displays a single piece at a time.

### **3. QrPlusMode.robust**
#### *Problem*
A malicious user could screen record the changing QR-codes and share them with friends.

#### *Solution*
This layer adds a time-to-live (TTL) to the transmitted data. The QR-code is only valid for a given period of time, and the reader cannot read it if it's too old.

### **4. QrPlusMode.sound**
#### *Problem*
A malicious user could modify the phone's time zone in the settings to display a QR-code that is valid in the future.

#### *Solution*
This layer adds time synchronization from a remote NTP server. The user can change the time settings locally, but it won't affect the QR-code.

### **5. QrPlusMode.paranoid**
#### *Problem*
A malicious user could share their screen in a FaceTime call or turn off network connections to trick TTL and NTP.

#### *Solution*
This layer adds possible cheating attempt detection. The renderer knows when the device is currently sharing its screen or recording it, or when the user has turned off their network connection. The renderer (malicious user's phone) displays the QR-code normally, but information about this suspicious activity is sent to the reader through the QR-code. It is then up to the reader to decide what to do with this information.

### **6. QrPlusMode.snowden**
#### *Problem*
A malicious user could read the data with another QR-code reader, manipulate the JSON to be valid, and create new QR-codes with the valid data.

#### *Soliution*
This layer encrypts the data before sending it. With the encryption key properly stored, only the reader provided by this package can decrypt it.

[pub_badge]: https://img.shields.io/pub/v/qr_plus.svg
[pub_badge_link]: https://pub.dev/packages/qr_plus
[license_badge]: https://img.shields.io/badge/License-BSD%203--Clause-blue.svg
[license_badge_link]: https://opensource.org/licenses/BSD-3-Clause
[style_badge]: https://img.shields.io/badge/Style-Mankeli%20analysis-blue
[style_badge_link]: https://pub.dev/packages/mankeli_analysis
[mobile_scanner_link]: https://pub.dev/packages/mobile_scanner
[qr_flutter_link]: https://pub.dev/packages/qr_flutter
[snowden_fullscreen]: https://github.com/Mankeli-Software/qr_plus/blob/3f6ef8d3a8a80db5357011216494f74dba4c10a4/doc/asset/snowden-fullscreen.gif
[snowden_qr]: https://github.com/Mankeli-Software/qr_plus/blob/3f6ef8d3a8a80db5357011216494f74dba4c10a4/doc/asset/snowden-qr.gif
[paranoid_fullscreen]: https://github.com/Mankeli-Software/qr_plus/blob/3f6ef8d3a8a80db5357011216494f74dba4c10a4/doc/asset/paranoid-fullscreen.gif
[paranoid_qr]: https://github.com/Mankeli-Software/qr_plus/blob/3f6ef8d3a8a80db5357011216494f74dba4c10a4/doc/asset/paranoid-qr.gif
[plain_fullscreen]: https://github.com/Mankeli-Software/qr_plus/blob/3f6ef8d3a8a80db5357011216494f74dba4c10a4/doc/asset/plain-fullscreen.jpg
[plain_qr]: https://github.com/Mankeli-Software/qr_plus/blob/3f6ef8d3a8a80db5357011216494f74dba4c10a4/doc/asset/plain-qr.jpg
[analysis_and_test]: https://github.com/Mankeli-Software/qr_plus/actions/workflows/flutter.yml/badge.svg

