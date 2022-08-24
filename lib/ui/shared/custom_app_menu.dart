import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    // print('Appbar created');
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 440)
            ? _TabletDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      // color: Colors.amber,
      child: Row(
        children: [
          CustomFlatButton(
            buttonText: 'Stateful Count ',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            myColor: Colors.transparent,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            buttonText: 'Provider Count',
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),

            myColor: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            buttonText: 'Another Page',
            // onPressed: () => Navigator.pushNamed(context, '/otherPage'),
            onPressed: () => locator<NavigationService>().navigateTo('/abc123'),

            myColor: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            buttonText: 'Stateful 24',
            // onPressed: () => Navigator.pushNamed(context, '/otherPage'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful/24'),

            myColor: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            buttonText: 'Provider 200',
            // onPressed: () => Navigator.pushNamed(context, '/otherPage'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider?q=200'),

            myColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            buttonText: 'Stateful Count ',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            myColor: Colors.transparent,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            buttonText: 'Provider Count',
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),

            myColor: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            buttonText: 'Another Page',
            // onPressed: () => Navigator.pushNamed(context, '/otherPage'),
            onPressed: () => locator<NavigationService>().navigateTo('/abc123'),

            myColor: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            buttonText: 'Stateful 24',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful/24'),
            myColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
