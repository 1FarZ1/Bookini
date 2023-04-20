import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/consts.dart';


// ignore: must_be_immutable
@immutable
class ActionButton extends StatelessWidget {
  ActionButton({
    super.key,
    url,
  }) {
    _url = Uri.parse(url);
  }

  late Uri _url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
                    fixedSize: Size(MediaQuery.of(context).size.width * .4,
                        MediaQuery.of(context).size.height * .085),
                    backgroundColor: Colors.white),
                child: Text(
                  "Free",
                  style: Styles.textStyle18.copyWith(color: Colors.black),
                )),
          ),
          Expanded(
            child: ElevatedButton(
                onPressed: () {
                  launchUrl(_url);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
                  fixedSize: Size(MediaQuery.of(context).size.width * .4,
                      MediaQuery.of(context).size.height * .085),
                ),
                child: Text(
                  "Preview",
                  style: Styles.textStyle16.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
