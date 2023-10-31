import 'package:flutter/material.dart';

//menjalankan class MyApp
void main() {
  runApp(const Home());
}

//untuk mengeluarkan class dibawah bisa ketik stl
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //menghilangkan debug hanya bisa didalam MaterialApp
      debugShowCheckedModeBanner: false,
      //scaffold
      home: Scaffold(


        //navbar
        appBar: AppBar(
          title: Text("Profile"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
            //    Animasi ketika di klik          Gambar ikon
            IconButton(onPressed: (){} , icon: Icon(Icons.notifications)),
            IconButton(onPressed: (){} , icon: Icon(Icons.more_vert))
          ],
        ),
        //end navbar


        //body 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 300,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(250),
                  child: Image.asset("image/profile.jpg"),
                  ),
              ),
              Container(height: 100,width: 400,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("NPM : 2110010515",style: TextStyle(fontSize: 20)),
                          
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Nama : Rahmatul Firdaus",style: TextStyle(fontSize: 20))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Kelas : 5B TI Reguler Pagi Banjarbaru",style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ],
                  ),
              ),
              TextButton(
               style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)),backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 179, 255))
              ),
              onPressed: () { },
              child: Text('BERANDA'),
            )
            ],
          ),
        )




        ),
        //end scaffold
        title: "Tugas 02 - Visual 3",
      );
  }
}
