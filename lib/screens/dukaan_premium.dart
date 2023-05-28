import 'package:flutter/material.dart';

class DukaanPremium extends StatelessWidget {
  const DukaanPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 65.0),
          child: Text(
            'Dukaan Premium',
            style: TextStyle(fontSize: 22),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 500,
                  height: 110,
                  color: Colors.blue,
                ),
                Positioned(
                  top: 10,
                  left: 35,
                  right: 35,
                  child: Container(
                    width: 500,
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 249, 249),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/dukkan.jpg',
                          height: 80,
                          width: 180,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Get Dukaan Premium for just \n₹4,999/year',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'All the advanced features for scalling your \nbusiness',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'Features',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/dukaanimage1.jpg',
                      height: 50,
                      width: 50,
                    ),
                    title: const Text(
                      'Custom domain name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                        'Get you own custom domain and build \nyour brand on the internet.'),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/dukaanimage2.jpg',
                      height: 50,
                      width: 50,
                    ),
                    title: const Text(
                      'Verified seller badge',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                        'Get green verified badge under your \nstore name and build trust.'),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/dukaanimage3.jpg',
                      height: 50,
                      width: 50,
                    ),
                    title: const Text(
                      'Dukaan for PC',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                        'Access all the exclusive premium \nfeatures on Dukaan for PC.'),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/dukaanimage4.jpg',
                      height: 50,
                      width: 50,
                    ),
                    title: const Text(
                      'Priority support',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                        'Get your questions resolved with our priority customer support.'),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const Divider(
              thickness: 4,
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.0),
              child: Text(
                ' What is Dukaan Premium?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0),
              child: Image.asset(
                'assets/images/dukaanvideoimage.jpg',
                width: 500,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 15),
            const Divider(
              thickness: 4,
            ),
            const ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                  'Freequently asked questions',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            const ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                  'What type of business can use Dukaan                     __\nPremium?',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                    'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
              ),
            ),
            const Divider(
              thickness: 4,
            ),
            const ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                  'What is your refund policy?                                           +',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            const ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                  'Will there be an automatic change after the              +\npaid trial?',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            const ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                  'What payment methods do you offer?                        +',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            const ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                  'What happends when my free trial ends?                   +',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            const ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                  'What are the terms for the custom domain?              +',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const Divider(
              thickness: 4,
            ),
            const ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                  'Need Help? Get in touch',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade100,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 90,
                      width: 150,
                      child: Image.asset('assets/images/fnl1.jpg'),
                    ),
                    const SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade100,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 90,
                      width: 149,
                      child: Image.asset('assets/images/fnl2.jpg'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                  'Select Domain',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      fontSize: 18),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  width: 180,
                  child: const Center(
                    child: Text(
                      'Get Premium',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
