import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  CustomInput({
    Key key,
    @required this.textEditingController,
    @required this.hintText,
  })  : assert(textEditingController != null),
        assert(hintText != null),
        super(key: key);
  final TextEditingController textEditingController;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 50),
      margin: EdgeInsets.all(10),
      child: Center(
        child: TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xFFD0D0D0),
        borderRadius: BorderRadius.circular(
          50,
        ),
      ),
    );
  }
}
