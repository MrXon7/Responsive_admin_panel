import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:responsiv_adminpanel/controllers/MenuController.dart';
import 'package:responsiv_adminpanel/responsive.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: context.read<MenuAppController>().controlMenu,
            icon: Icon(Icons.menu),
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        Expanded(
          child: SearchField(),
        ),
        ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.white10)),
      padding: EdgeInsets.symmetric(
          horizontal: defoultPadding, vertical: defoultPadding / 2),
      margin: EdgeInsets.only(left: defoultPadding),
      child: Row(
        children: [
          Image.asset(
            'images/profile_pic.png',
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defoultPadding / 2),
              child: Text("Anjelina Joli"),
            ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          fillColor: secondaryColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(defoultPadding * 0.75),
              margin: EdgeInsets.symmetric(horizontal: defoultPadding / 2),
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: SvgPicture.asset('icons/Search.svg'),
            ),
          )),
    );
  }
}
