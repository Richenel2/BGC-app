import 'package:flutter/material.dart';

class PinCode extends StatefulWidget {
  final int number;
  final Color? textColor;
  final Color? bgColor;
  final Color? fillColor;
  final Function(String value)? onCompleted;

  const PinCode({
    super.key,
    this.textColor,
    this.fillColor,
    this.bgColor,
    required this.number,
    this.onCompleted,
  });

  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  List<FocusNode> listFocus = [];
  List<Color?> listColor = [];
  List<String> listString = [];
  List<TextEditingController> listController = [];
  @override
  void initState() {
    listFocus = [for (int i = 0; i < widget.number; i++) FocusNode()];
    listColor = [for (int i = 0; i < widget.number; i++) widget.bgColor];
    listString = [for (int i = 0; i < widget.number; i++) "0"];
    listController = [
      for (int i = 0; i < widget.number; i++) TextEditingController()
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (int i = 0; i < widget.number; i++)
          SizedBox(
            width: 60,
            height: 60,
            child: Flexible(
              child: TextFormField(
                controller: listController[i],
                keyboardType: TextInputType.number,
                focusNode: listFocus[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
                onChanged: (value) {
                  if (value.length > 1) {
                    listController[i].text = value.substring(0, 1);
                  }
                  if (value.isNotEmpty) {
                    setState(() {
                      listColor[i] = widget.fillColor;
                      if (i < widget.number - 1) {
                        listFocus[i + 1].requestFocus();
                        listString[i] = value;
                      } else if (widget.onCompleted != null) {
                        widget.onCompleted!(listString.join());
                      }
                    });
                  } else {
                    setState(() {
                      listColor[i] = widget.bgColor;
                    });
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: listColor[i],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
