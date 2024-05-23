# advance_flutter_ch3
##  3.1 connectivity_plus

### Explanation
- **Import the package**: First, import the `connectivity_plus` package.
- **StreamBuilder**: Use a `StreamBuilder` to listen for changes in the connectivity status provided by `Connectivity().onConnectivityChanged`.
- **Builder Function**: The `builder` function checks the connectivity status:
  - If `snapshot.data` contains `ConnectivityResult.mobile` or `ConnectivityResult.wifi`, it means the device is connected to the internet, and the `OnlineContent` widget is returned.
  - If the device is not connected, the `OfflineContent` widget is returned.
- **OnlineContent and OfflineContent Widgets**: These are simple widgets that display a message based on the connectivity status.

This setup ensures that the UI updates dynamically based on the network connectivity status of the device.


```dart
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Connectivity Network'),
        ),
        body: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
              if (snapshot.data!.contains(ConnectivityResult.mobile)) {
                // RETURN MOBILE DATA
                return Text('connection of mobile');
              } else if (snapshot.data!.contains(ConnectivityResult.wifi)) {
                // RETURN WIFI
                return Text('connection of wifi');
              } else {  
                // RETURN NO INTERNET CONNECTION
                return Text('no internet connection');
              }
            },
          ),
        ),
      ),
    );
  }
}
```



### Screenshots

<div align="center">
  <img src= "https://github.com/DarshanPatel311/advance_flutter_ch3/assets/143177575/030f238f-5807-4230-a8bf-541c0ba18a5f"  width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
  <img src= "https://github.com/DarshanPatel311/advance_flutter_ch3/assets/143177575/118337cc-6448-4eba-84f2-c8d4df4c39ec" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
  <img src= "https://github.com/DarshanPatel311/advance_flutter_ch3/assets/143177575/f24641bc-06c3-47fe-a661-b060821d73b3" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

### Video 



https://github.com/DarshanPatel311/advance_flutter_ch3/assets/143177575/cf6d9724-dab1-46e3-827f-fd5671d025f2




