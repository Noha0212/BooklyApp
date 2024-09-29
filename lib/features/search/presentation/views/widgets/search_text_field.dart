// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    this.onchanged,
  }) : super(key: key);
  final void Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        onChanged: onchanged,
        decoration: InputDecoration(
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            hintText: 'Search for a Book',
            hintStyle: const TextStyle(color: Colors.grey),
            suffixIcon: const Opacity(
              opacity: 0.7,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
                size: 24,
              ),
            )),
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.circular(14),
  );
}
