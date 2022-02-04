import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      padding: const EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        color: Colors.deepPurple[200],
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: const [
          Icon(Icons.account_box),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('User'),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: Colors.deepPurple[200],
        filled: true,
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        suffixIcon: const Icon(Icons.search_rounded),
      ),
    );
  }
}
