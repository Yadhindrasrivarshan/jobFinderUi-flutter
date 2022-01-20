import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobuiapp/screens/search/widgets/search_appbar.dart';
import 'package:jobuiapp/screens/search/widgets/search_input.dart';
import 'package:jobuiapp/screens/search/widgets/search_list.dart';
import 'package:jobuiapp/screens/search/widgets/search_option.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SearchAppbar(),
                SearchInput(),
                SearchOption(),
                Expanded(child: SearchList())
              ],
            )
          ],
        ));
  }
}
