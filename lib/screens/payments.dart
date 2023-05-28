import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Payments')),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.error_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  height: 168,
                  width: 363,
                  margin: const EdgeInsets.all(24),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Colors.black,
                          child: const Text(
                            'Transaction Limit',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'A free limit up to which you will recieve \nthe online ayments directly in your bank',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15),
                        ),
                        const SizedBox(height: 12),
                        const LinearProgressIndicator(
                          value: 0.3,
                          backgroundColor: Colors.grey,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          '36,668 left out of ₹50,000',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Increase Limit'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 24.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Default Method',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 138),
                      Text('        Online Payments '),
                      Text(
                        '>',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Payment Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 152),
                      Text('        Bank Account '),
                      Text(
                        '>',
                        style: TextStyle(fontSize: 22),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: const [
                  Text(
                    'Payments Overview',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 152),
                  Text('         Life time'),
                  Text(
                    ' >',
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24.0),
                  width: 165,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 175, 106, 3),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('AMOUNT ON HOLD',
                            style: TextStyle(color: Colors.white)),
                        Text(
                          '₹ 0',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 165,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 167, 9),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'AMOUNT RECIEVED',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '₹ 13,33',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: const [
                  Flexible(
                    child: Text(
                      'Transactions',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 201, 198, 198),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(
                      child: Text(
                        'On Hold',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 91, 90, 90)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    width: 110,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 5, 92, 163),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(
                      child: Text(
                        'Payouts(15)',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 201, 198, 198),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Center(
                      child: Text(
                        'Refunds',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 91, 90, 90)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://5.imimg.com/data5/GX/XW/MY-67450080/mens-black-plain-t-shirt-1000x1000.jpg'),
              title: const Text('Order #1688068'),
              subtitle: const Text('Jul 12,02.06 PM'),
              trailing: const Text('         ₹799\nSucessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹799 deposited to: 5885478954565',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://res.cloudinary.com/dzdgpwtox/image/upload/w_750/u_designer-tool-uploads:bucket_7309:1636379153786.png,w_270,h_300,o_90,c_pad/u_radialize/fl_layer_apply,e_displace,y_-4/fl_layer_apply,x_20,y_-10/mugs/mockup1.jpg'),
              title: const Text('Order #1457741'),
              subtitle: const Text('Apr 26, 07:47 AM'),
              trailing: const Text('       ₹397.4\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹397.4 deposited to: 5885478954586',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://www.redwolf.in/image/catalog/marketplace/shit%20indians%20say/og-t-shirt-combo-india.jpg'),
              title: const Text('Order #1408896'),
              subtitle: const Text('Apr 11, 10:54 AM'),
              trailing: const Text('     ₹686.42\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹686.42 deposited to: 5885478954130',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://nautunkee.com/cdn/shop/products/Men-Combo-1.png?v=1633069606'),
              title: const Text('Order #1369633'),
              subtitle: const Text('Apr 2, 11:29 AM'),
              trailing: const Text('     ₹1123.5\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹1123.5 deposited to: 5885478954596',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://5.imimg.com/data5/GR/HL/MY-10669978/kids-tshirt-style-500x500.jpg'),
              title: const Text('Order #1454465'),
              subtitle: const Text('Apr 2, 07:47 AM'),
              trailing: const Text('   ₹1722.75\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹1722.75 deposited to: 5885478954406',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://adimanav.com/wp-content/uploads/2022/03/ashakya-khodkar-kids-tshirt-light-blue.jpg'),
              title: const Text('Order #1457741'),
              subtitle: const Text('Apr 6, 7:07 AM'),
              trailing: const Text('     ₹884.17\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹884.17 deposited to: 5885478954386',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://www.xtees.com/uploads/products/images/primary/black-plain-kids-boys-round-neck-t-shirt_1612021453.jpg'),
              title: const Text('Order #1457761'),
              subtitle: const Text('jan 26, 07:47 AM'),
              trailing: const Text('     ₹599.25\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹599.25 deposited to: 5885478954630',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe3Mva-iUqAVQc6p2Ajy0bWuZaVmndUyddlg&usqp=CAU'),
              title: const Text('Order #1457841'),
              subtitle: const Text('Apr 12, 08:47 AM'),
              trailing: const Text('         ₹2297\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹2297 deposited to: 5885478954886',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://storage.googleapis.com/swag-swami-media/2019/09/swag-swami-cute-design-kids-unisex-t-shirts-combo-pack-6-nos-1.jpg'),
              title: const Text('Order #1457741'),
              subtitle: const Text('Apr 12, 07:47 AM'),
              trailing: const Text('     ₹599.25\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹599.25 deposited to: 5885478954736',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://m.media-amazon.com/images/I/31ddIUbCwsS.jpg'),
              title: const Text('Order #1457750'),
              subtitle: const Text('Apr 20, 09:37 AM'),
              trailing: const Text('     ₹524.25\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹524.25 deposited to: 5885478954330',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://www.jiomart.com/images/product/500x630/rvbh4pgpc6/codez-boys-crew-neck-t-shirts-combo-product-images-rvbh4pgpc6-0-202210261942.jpg'),
              title: const Text('Order #1457731'),
              subtitle: const Text('Apr 13, 6:47 AM'),
              trailing: const Text('          ₹699\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹699 deposited to: 5885478954986',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIMKLkbZDsdqc08_gpVAI1dZwYQ--fQOT6pw&usqp=CAU'),
              title: const Text('Order #1457444'),
              subtitle: const Text('Apr 08, 6:07 AM'),
              trailing: const Text('     ₹1123.5\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹1123.5 deposited to: 5885478954986',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://m.media-amazon.com/images/I/81mBaFYqS+L._UL1500_.jpg'),
              title: const Text('Order #1457703'),
              subtitle: const Text('Apr 27, 10:47 AM'),
              trailing: const Text('          ₹799\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹799 deposited to: 5885478954952',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://m.media-amazon.com/images/I/61wvw6AEK8L._UL1500_.jpg'),
              title: const Text('Order #1457731'),
              subtitle: const Text('Apr 23, 11:45 AM'),
              trailing: const Text('     ₹524.25\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹524.5 deposited to: 588547895406',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Image.network(
                  'https://cdn.shopify.com/s/files/1/0232/8294/1999/products/1628002003801_63_26_89yearshs459p3tadeooriginalimafu4rv6sngzuht-originnm80prcnt_900x.jpg?v=1652253054'),
              title: const Text('Order #1457730'),
              subtitle: const Text('Apr 24, 10:23 AM'),
              trailing: const Text('     ₹524.25\nSuccessful'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: const [
                  Text(
                    '₹524.25 deposited to: 5885478954988',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
