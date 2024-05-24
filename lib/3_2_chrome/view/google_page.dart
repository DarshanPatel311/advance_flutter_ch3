import 'package:advance_flutter_ch3/3_2_chrome/provider/google_provider.dart';
import 'package:advance_flutter_ch3/utils/google_variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

import 'components/bottom.dart';

class Googlepage extends StatelessWidget {
  const Googlepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 300,
                  child: TextFormField(
                    controller: txtsearch,
                    decoration: InputDecoration(
                        hintText: 'Search or type address',
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            Provider.of<GoogleProvider>(context, listen: false)
                                .Search(txtsearch.text);
                            inAppWebViewController.loadUrl(
                                urlRequest: URLRequest(
                                    url: WebUri(
                                        'https://www.google.com/search?q=google&rlz=1C1CHBF_enIN1097IN1097&oq=${Provider.of<GoogleProvider>(context, listen: false).search}&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTITCAEQLhiDARjHARixAxjRAxiABDIGCAIQRRg7MgwIAxAjGCcYgAQYigUyDQgEEAAYgwEYsQMYgAQyDQgFEAAYgwEYsQMYgAQyCggGEAAYsQMYgAQyDQgHEAAYgwEYsQMYgAQyBwgIEAAYjwIyBwgJEAAYjwLSAQk3NTQ4ajFqMTWoAgiwAgE&sourceid=chrome&ie=UTF-8')));
                          },
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Icon(
                  Icons.star_border,
                  size: 30,
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.file_download_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 1,
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                ),
              ],
            )),
      ),
      body: Stack(
        children: [
          InAppWebView(
              initialUrlRequest: URLRequest(
                  url: WebUri(
                      'https://www.google.com/search?q=google&rlz=1C1CHBF_enIN1097IN1097&oq=${Provider.of<GoogleProvider>(context, listen: false).search}&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTITCAEQLhiDARjHARixAxjRAxiABDIGCAIQRRg7MgwIAxAjGCcYgAQYigUyDQgEEAAYgwEYsQMYgAQyDQgFEAAYgwEYsQMYgAQyCggGEAAYsQMYgAQyDQgHEAAYgwEYsQMYgAQyBwgIEAAYjwIyBwgJEAAYjwLSAQk3NTQ4ajFqMTWoAgiwAgE&sourceid=chrome&ie=UTF-8')),
              onWebViewCreated: (controller) {
                inAppWebViewController = controller;
              },
              onProgressChanged: (controller, progress) {
                Provider.of<GoogleProvider>(context, listen: false)
                    .ChangeProgres(progress);
              }),
          (Provider.of<GoogleProvider>(context, listen: true).progres < 1)
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: LinearProgressIndicator(
                      value: Provider.of<GoogleProvider>(context, listen: true)
                          .progres))
              : Container(),

        ],
      ),
      bottomNavigationBar: BottomBox(),
    );
  }


}
