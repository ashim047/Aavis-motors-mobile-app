import 'package:flutter/material.dart';

import '../search_page.dart';

class CusAppBar extends StatelessWidget {
  const CusAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Aaviss Motors',
              style:
                  TextStyle(color: Colors.blue.withOpacity(0.5), fontSize: 24),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SearchPage();
                    },
                  ));
                },
                icon: Icon(Icons.manage_search_outlined))
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'Resize Value Calculator',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.black.withOpacity(0.75)),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
