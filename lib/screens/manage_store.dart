import 'package:flutter/material.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 240, 240),
      appBar: AppBar(
        title: const Text('Manage Store'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                _buildContainer(
                    context, 'assets/images/image1.jpg', 'Marketing \nDesigns'),
                _buildContainer(
                    context, 'assets/images/images2.jpg', 'Online \nPayments'),
              ],
            ),
            Row(
              children: [
                _buildContainer(
                    context, 'assets/images/images3.jpg', 'Discount \nCoupons'),
                _buildContainer(
                    context, 'assets/images/images4.jpg', 'My \nCustomers'),
              ],
            ),
            Row(
              children: [
                _buildContainer(context, 'assets/images/images5.jpg',
                    'Marketing \nDesigns'),
                _buildContainer(
                    context, 'assets/images/images6.jpg', 'Online \nPayments'),
              ],
            ),
            Row(
              children: [
                _buildContainer1(context, 'assets/images/images7.jpg',
                    'assets/images/images8.jpg', 'Order \nForm'),
                const SizedBox(
                  width: 203,
                )
              ],
            ),
            const SizedBox(height: 125),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                    backgroundColor: Colors.blue),
                BottomNavigationBarItem(
                    icon: Icon(Icons.star_border_outlined),
                    label: 'Orders',
                    backgroundColor: Colors.blue),
                BottomNavigationBarItem(
                    icon: Icon(Icons.grid_view_outlined),
                    label: 'Products',
                    backgroundColor: Colors.blue),
                BottomNavigationBarItem(
                    icon: Icon(Icons.layers_outlined),
                    label: 'Manage',
                    backgroundColor: Colors.blue),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_outlined),
                    label: 'Account',
                    backgroundColor: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildContainer(BuildContext context, String imagePath, String text) {
  return Expanded(
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      margin: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              imagePath,
              height: 50.0,
              width: 50.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: 15.0),
        ],
      ),
    ),
  );
}

Widget _buildContainer1(
    BuildContext context, String imagePath1, String imagePath2, String text) {
  return Expanded(
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      margin: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(imagePath1, height: 50.0, width: 50.0),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 15.0),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset(imagePath2, height: 40.0, width: 40.0),
            ),
          ),
        ],
      ),
    ),
  );
}
