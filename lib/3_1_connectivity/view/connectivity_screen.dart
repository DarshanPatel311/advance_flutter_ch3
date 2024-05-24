import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  ConnectivityScreen extends StatelessWidget {
  const  ConnectivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: StreamBuilder(
          builder:  (context, snapshot){
            if(snapshot.data!.contains(ConnectivityResult.mobile)){
              return Scaffold(
                body: Column(
                  children: [
                    SizedBox(height: 120,),
                    Container(
                      height: 500,
                      width: double.infinity,
                      child: Image.asset('assets/img/mobile data.jpg'),
                    ),
                    Text("Your Device Connected to Network",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff006E7A)
                    ),)

                  ],
                ),
              );
            }else if(snapshot.data!.contains(ConnectivityResult.wifi)){
              return Scaffold(
                backgroundColor: Color(0xffEBEBEB),

                body: Column(
                  children: [
                    SizedBox(height: 120,),
                    Container(
                      height: 500,
                      width: double.infinity,
                      child: Image.asset('assets/img/wifi.jpg'),
                    ),
                    Text("Your Device Connected to wifi",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff518ED9)
                    ),)

                  ],
                ),
              );
            }
            else{
              return Column(
                children: [
                  SizedBox(height: 120,),
                  Container(
                    height: 500,
                    width: double.infinity,
                    child: Image.asset('assets/img/internetno.avif'),
                  ),
                  Text("Please check your internet connection",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.amber
                  ),)

                ],
              );

            }
          },
          stream: Connectivity().onConnectivityChanged,
    )
    );
  }
}
