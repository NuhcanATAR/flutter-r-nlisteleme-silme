import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tekrar_app/models/urun.dart';

void main(){
  runApp(MaterialApp(
    home: urun_list(),
    debugShowCheckedModeBanner: false,
  ));
}

class urun_list extends StatefulWidget{
  @override
  _urun_listState createState() => _urun_listState();
}

class _urun_listState extends State<urun_list>{
  
  List<Urun> uruns = [
    Urun.withId(1, "https://mcdn01.gittigidiyor.net/56266/tn50/562663220_tn50_0.jpg?1619496", "Arpa Tohumu 50KG", "Çorum/Mecitözü", "Boyraz Tarım", "Adet", 330),
    Urun.withId(2, "https://cdn.dsmcdn.com/ty94/product/media/images/20210404/16/7e00ff9d/59116097/1/1_org_zoom.jpg", "Agr Ayçiçeği Tohumu", "Çorum/Mecitözü", "Boyraz Tarım", "Adet", 280),
    Urun.withId(3, "https://st2.myideasoft.com/idea/cm/75/myassets/products/705/poyraz-pare-zumrut-buyukbas-yalama-tasi-3-kg-9711-jpg.jpeg?revision=1613215148", "Zümrüt Büyükbaş Yalama Taşı 3Kg", "Çorum/Mecitözü", "Boyraz Tarım", "Adet", 34),
    Urun.withId(4, "https://www.intfarming.com/image/cache/catalog/standart-sebze-tohumu/1-kg/tatli-misir-tohumu-fiyatlari-450x450.jpg", "Tatlı Mısır Tohumu", "Çorum/Mecitözü", "Boyraz Tarım", "Kg", 100),
    Urun.withId(5, "https://mcdn01.gittigidiyor.net/63102/tn50/631029908_tn50_0.jpg?1619497", "Abalım pehlivan besi yemi 50 kg", "Çorum/Mecitözü", "Boyraz Tarım", "Adet", 363),
    Urun.withId(6, "https://www.intfarming.com/image/cache/catalog/standart-sebze-tohumu/1-kg/tatli-misir-tohumu-fiyatlari-450x450.jpg", "Tatlı Mısır Tohumu", "Çorum/Mecitözü", "Boyraz Tarım", "Kg", 100),
  ];

  Urun selectedUrun = Urun.withId(0, "", "", "", "", "", 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Ürün Listesi"),
      ),
      drawer: Drawer(

      ),
      body: buildBody(context)
    );
  }

  buildBody(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: uruns.length,
                itemBuilder: (BuildContext context,int index){
                  return Container(
                    margin: EdgeInsets.only(top: 12,bottom: 12),
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      leading: Image.network(uruns[index].urun_img,width: 65,height: 65,),
                      title: Text(uruns[index].urun_isim,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                      subtitle: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 120,
                                              height: 20,
                                              child: Row(
                                                children: [
                                                  Icon(Icons.account_box,size: 13,),
                                                  Text(uruns[index].urun_satici,style: TextStyle(fontSize: 13),),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 120,
                                              height: 20,
                                              child: Row(
                                                children: [
                                                  Icon(Icons.location_on,size: 13,),
                                                  Text(uruns[index].urun_bolge,style: TextStyle(fontSize: 13),),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 120,
                                              height: 20,
                                              child: Row(
                                                children: [
                                                  Icon(Icons.assistant_photo_rounded,size: 13,),
                                                  Text(uruns[index].urun_tipi,style: TextStyle(fontSize: 13),),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Text(uruns[index].urun_fiyat.toString() + " ₺",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      onTap: (){
                        setState(() {
                          selectedUrun = uruns[index];
                        });
                        print(selectedUrun.urun_isim);
                      },
                    ),
                  );
                }),
          ),
          Container(
            width: screenSize.width,
            padding: EdgeInsets.only(top: 15,bottom: 15),
            color: Colors.lightGreen,
            child: Text("Seçili Ürün :"+ selectedUrun.urun_isim ,textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
          ),
          Container(
            width: screenSize.width,
            padding: EdgeInsets.only(top: 4,bottom: 4),
            color: Colors.lightGreen,
            child: Row(
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: TextButton(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.update,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text("Ürün Güncelle",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ],
                    ),
                    onPressed: (){

                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: TextButton(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 14,
                        ),
                        Text("Ürün Oluştur",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ],
                    ),
                    onPressed: (){

                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: TextButton(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.delete ,
                          color: Colors.white,
                          size: 14,
                        ),
                        Text("Ürünü Sil",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ],
                    ),
                    onPressed: (){
                      setState(() {
                        uruns.remove(selectedUrun);
                      });
                      var message = "Silindi";
                      messageview(context, message);
                    },
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  void messageview(BuildContext context,String message){
    var alert = AlertDialog(
      title: Text("Seçili Ürün:"+selectedUrun.urun_isim),
      content: Text(""),
    );
  }


}