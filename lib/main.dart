import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:provider/provider.dart';
import 'country_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CountryProvider(),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 0, 4, 255),
            title: Text('UAS'),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Image.asset('images/korea.png'),
                    SizedBox(height: 15),
                    Text(
                      'KOREA SELATAN',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 4, 255),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ibu Kota',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Seoul',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lambang Negara',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Taeguk',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bahasa Negara',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Bahasa Korea',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bentuk Negara',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Republik',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mata Uang',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Won Republik Korea (₩)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hari Kemerdekaan',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '15 Agustus 1945',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        //Logika Ketika Tombol Ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondScreen(data: ''),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 0, 4, 255),
                        ),
                      ),
                      child: Text('Selengkapnya'),
                    ),
                  ],
                ),
              ),
              MyHomePage(),
              HalamanProfil(),
            ],
          ),
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: Color.fromARGB(255, 0, 4, 255),
            items: [
              TabItem(icon: Icons.home, title: 'Beranda'),
              TabItem(icon: Icons.map, title: 'Country'),
              TabItem(icon: Icons.help_center_rounded, title: 'About'),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String data;
  //Menerima data dari halaman sebelumnya
  SecondScreen({required this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 4, 255),
        title: Text('Selengkapnya'),
      ),
      body: Card(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Column(
              children: [
                SizedBox(height: 15),
                Text(
                  'KOREA SELATAN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 4, 255),
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('images/korea.png'),
                ),
                SizedBox(height: 20),
                Text(
                  'Bentuk : Republik',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Ibu Kota : Seoul',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Lambang : Taeguk',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Semboyan : Hongik Ingan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Bahasa : Bahasa Korea',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Mata Uang : Won Republik Korea (₩)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Jumlah Provinsi : 9',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Jumlah Suku : 3 ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Suku Terbesar : Suku Bangsa Altaik atau proto-Altaic ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Jumlah Bahasa Daerah : 6 ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Hari Kemerdekaan : 15 Agustus 1945 ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    //Logika Ketika Tombol Ditekan
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 0, 4, 255)),
                  ),
                  child: Text('Kembali'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<CountryProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            countryProvider.fetchData();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color.fromARGB(255, 0, 4, 255),
            ),
          ),
          child: Text('Ambil Data'),
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: countryProvider.cryptoList.length,
            itemBuilder: (context, index) {
              final crypto = countryProvider.cryptoList[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      crypto.bendera,
                    ),
                  ),
                  title: Text(
                    crypto.bentuk + ' (' + crypto.nama + ')',
                  ),
                  subtitle: Text(
                    'Ibu Kota : ' + crypto.capital.first,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class HalamanProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('images/ane.jpg'),
          ),
          SizedBox(height: 15),
          Text(
            'AMANDA SARI',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 15),
          Text(
            '21220529',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'SI - 5N',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'SISTEM INFORMASI',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'STMIK ROYAL KISARAN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
