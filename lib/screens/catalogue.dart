import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  Catalogue({super.key});
  final List<Tab> myTabs = <Tab>[
    const Tab(
      text: 'Products',
    ),
    const Tab(
      text: 'Categories',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(
              Icons.search,
              size: 32,
            ),
          ],
          centerTitle: true,
          title: const Text('Catalogue'),
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: [
            Products(
              key: key,
            ),
            const Center(
              child: Text('Categories'),
            )
          ],
        ),
      ),
    );
  }
}

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> cards = [
      Product(
          imgUrl:
              'https://tse4.mm.bing.net/th?id=OIP.ioWyRFSHoQbJuHbBR6hGKwHaHa&pid=Api&P=0',
          price: '799',
          title: 'Couch Potato | Women dress one'),
      Product(
          imgUrl:
              'https://tse4.mm.bing.net/th?id=OIP.32DVCDifrf5Odtf9s2LqowHaHV&pid=Api&P=0',
          price: '799',
          title: 'Couch Potato | Men | Black dress'),
      Product(
          imgUrl:
              'https://i.etsystatic.com/19746927/r/il/7d4c78/4685241295/il_fullxfull.4685241295_6d4e.jpg',
          price: '399',
          title: 'Mug | Explore'),
      Product(
          imgUrl:
              'https://xcdn.next.co.uk/Common/Items/Default/Default/ItemImages/Search/224x336/620626.jpg',
          price: '699',
          title: 'Combo Blahst 1 | Pack Combo'),
      Product(
          imgUrl:
              'https://mydukaan.s3.amazonaws.com/3377706/fd293b93-ebac-449c-a718-157df6bdbf99/whatsapp-image-2021-04-12-at-3-12eea4df-71da-499c-8fca-eb778c51cfd4.jpeg',
          price: '449',
          title: 'Mug | Orchard'),
      Product(
          imgUrl:
              'https://www.beyoung.in/api/cache/catalog/products/plain_new_update_images_2_5_2022/plain_t-shirts_combo_black_and_white_base_700x933.jpg',
          price: '599',
          title: 'Combo Blahst 2 | Explore More'),
      Product(
          imgUrl:
              'https://mydukaan.s3.amazonaws.com/3377706/fd293b93-ebac-449c-a718-157df6bdbf99/no-price-02-9c3d9a56-f3f8-4240-9b07-7dfb5af29f10.jpg',
          price: '1299',
          title: 'I See Combo Pack'),
      Product(
          imgUrl:
              'https://rukminim1.flixcart.com/image/416/416/kyt0ya80/music/v/i/o/vcd-standard-edition-waren-bros-perfect-kids-combo-pack-original-imagaymf6da68syx.jpeg?q=70',
          price: '1199',
          title: 'Kids Combo Blahst'),
    ];
    return ListView.builder(
        itemCount: cards.length,
        key: PageStorageKey(key),
        itemBuilder: (ctx, index) {
          return cards[index];
        });
  }
}

class Product extends StatelessWidget {
  final String imgUrl;
  final String price;
  final String title;
  const Product(
      {super.key,
      required this.imgUrl,
      required this.price,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(imgUrl),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 175,
                              child: Text(
                                title,
                                style: const TextStyle(fontSize: 16),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(Icons.more_vert),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        '1 Piece',
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        '₹$price',
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text(
                              'In Stock',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          Switch(value: true, onChanged: (value) {})
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
            label: const Text(
              'Share Product',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ]),
      ),
    );
  }
}
