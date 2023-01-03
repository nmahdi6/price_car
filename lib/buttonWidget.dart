import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? title;
  final bool? blu;
  final bool? grey;
  final VoidCallback? onTap;
  const ButtonWidget(
      {super.key,
      @required this.title,
      this.blu = false,
      this.onTap,
      this.grey = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: blu == true
            ? Colors.blue
            : grey == true
                ? Colors.grey
                : Colors.white,
        border: Border.all(
            color: blu == true
                ? Colors.white
                : grey == true
                    ? Colors.grey
                    : const Color.fromARGB(255, 29, 155, 240)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            title!,
            style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.none,
                color: blu == true
                    ? Colors.white
                    : grey == true
                        ? Colors.white
                        : Colors.blue),
          ),
        ),
      ),
    );
  }
}
