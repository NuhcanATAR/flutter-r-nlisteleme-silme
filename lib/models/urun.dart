class Urun{
  int id;
  String urun_img;
  String urun_isim;
  String urun_bolge;
  String urun_satici;
  String urun_tipi;
  int urun_fiyat;

  Urun.withId(int id,String urun_img,String urun_isim,String urun_bolge,String urun_satici,String urun_tipi,int urun_fiyat){
    this.id          = id;
    this.urun_img    = urun_img;
    this.urun_isim   = urun_isim;
    this.urun_bolge  = urun_bolge;
    this.urun_satici = urun_satici;
    this.urun_tipi   = urun_tipi;
    this.urun_fiyat  = urun_fiyat;
  }

  Urun(String urun_img,String urun_isim,String urun_bolge,String urun_satici,String urun_tipi,int urun_fiyat){

    this.urun_img    = urun_img;
    this.urun_isim   = urun_isim;
    this.urun_bolge  = urun_bolge;
    this.urun_satici = urun_satici;
    this.urun_tipi   = urun_tipi;
    this.urun_fiyat  = urun_fiyat;
  }

}