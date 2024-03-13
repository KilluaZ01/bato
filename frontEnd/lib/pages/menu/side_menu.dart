import 'package:flutter/material.dart';
import 'package:front_end/pages/menu/about_us.dart';
import 'package:front_end/pages/menu/contact_us.dart';
import 'package:front_end/pages/menu/help.dart';
import 'package:front_end/pages/menu/privacy_policy.dart';
import 'package:front_end/pages/menu/terms_and_conditions.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: const Color.fromRGBO(20, 46, 48, 1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 10, left: 5),
        child: Wrap(
          runSpacing: 3,
          children: [
            Center(
              child: const DrawerHeader(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 65,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('About Us'),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUs()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.question_answer),
              title: const Text('FAQ & Help'),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HelpScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact Us'),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactUs()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.policy),
              title: const Text('Privacy Policy'),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacyScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.rule),
              title: const Text('Terms and Conditions'),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TermsAndConditions()),
                );
              },
            ),
          ],
        ),
      );
}
