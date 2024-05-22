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
              return Column(
                children: [
                  Container(
                    height: 500,
                    width: double.infinity,
                    child: Image.asset('assets/img/Screenshot 2024-05-22 201741.png'),
                  )

                ],
              );
            }else if(snapshot.data!.contains(ConnectivityResult.wifi)){
              return Column(
                children: [
                  Container(
                    height: 500,
                    width: double.infinity,
                    child: Image.asset('assets/img/Screenshot 2024-05-22 201741.png'),
                  ),

                ],
              );
            }
            else{
              return Scaffold(
                appBar: AppBar(
                  title: Text("Home Screen"),
                ),
                body: Column(
                  children: [
                    Spacer(),
                    Container(
                      height: 50,
                      width: 450,
                      color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.home_outlined,size: 30,),
                
                          Icon(Icons.add,size: 30,),
                          
                          Icon(Icons.settings_suggest_outlined,size: 30,),
                          Icon(Icons.video_call_outlined)
                        ],
                      ),
                    )
                
                
                
                  ],
                ),
              );
            }
          },
          stream: Connectivity().onConnectivityChanged,
    )
    );
  }
}
