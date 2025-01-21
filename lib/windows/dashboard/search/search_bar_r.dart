import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Components/shared/CircleButton.dart';

class SearchBarR extends StatefulWidget {
  const SearchBarR({
    Key? key,
  }) : super(key: key);

  @override
  _SearchBarRState createState() => _SearchBarRState();
}

class _SearchBarRState extends State<SearchBarR> {
  FocusNode _focus = new FocusNode();
  bool focused = false;

  @override
  void initState() {
    _focus.addListener(_onFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    _focus.removeListener(() => _onFocusChange);
    _focus.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (_focus.hasFocus) {
      setState(() {
        focused = true;
      });
    }

    if (!_focus.hasFocus) {
      setState(() {
        focused = false;
      });
    }
    print("Has Focus: " + _focus.hasFocus.toString());
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: (s.height * 56) / 812,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: TextField(
                focusNode: _focus,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "res/icons/search.svg",
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "res/icons/filter.svg",
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(56),
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: (s.width * 8) / 375),
          CircleButton(
            onTap: () {
              FocusScope.of(context).unfocus();
              _onFocusChange();
            },
            child: SvgPicture.asset(
              !focused ? "res/icons/camera.svg" : "res/icons/close.svg",
              width: (s.width *  24) / 375),
            ),
        ],
      ),
    );
  }
}
