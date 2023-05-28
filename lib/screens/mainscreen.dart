import 'package:flutter/material.dart';
import 'package:ui_design1/screens/additional_info.dart';
import 'package:ui_design1/screens/Catalogue.dart';
import 'package:ui_design1/screens/dukaan_premium.dart';
import 'package:ui_design1/screens/manage_store.dart';
import 'package:ui_design1/screens/order.dart';
import 'package:ui_design1/screens/payments.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Homescreen',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdditionalInfo(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                  ),
                ),
                const Text(
                  'Additonal Information',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ManageStore(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                  ),
                ),
                const Text(
                  'Manage Store',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Payments(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                  ),
                ),
                const Text(
                  'Payments',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DukaanPremium(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                  ),
                ),
                const Text(
                  'Dukaan Premium',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Order(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                  ),
                ),
                const Text(
                  'Orders Page',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Catalogue(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                  ),
                ),
                const Text(
                  'Catalogue',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
