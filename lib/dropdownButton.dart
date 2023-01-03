import 'package:flutter/material.dart';

DropdownButtonFormField<String> dropdownButton(
      String selectedItem, List<String> items, TextTheme textTheme) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.black, width: 0.3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.black, width: 0.3),
        ),
        filled: true,
        fillColor:
        //  SolidColors.backgroundColor,
         Colors.white,
      ),
      //  icon: Icons.radio_button_checked,
      dropdownColor: Colors.white,
      value: selectedItem,
      items: items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: textTheme.bodyText1,
                ),
              ))
          .toList(),
          onChanged: (value) {
            
          },
      // onChanged: (item) => setState(() => selectedItem = item!),
    );
      }