import 'package:flutter/material.dart';

import '../../../core/consts.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
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
              "19.99\$",
              style: Styles.textStyle18.copyWith(color: Colors.black),
            )),
        ElevatedButton(
            onPressed: () {},
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
              "Free Preview",
              style: Styles.textStyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
