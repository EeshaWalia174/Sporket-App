import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  final Widget widget;
  const AlertBox({
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10.0,
          ),
          margin: EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 00.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: widget,
        ),
      ],
    );
  }
}
