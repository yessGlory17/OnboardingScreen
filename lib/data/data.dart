class SliderModel {
  String imagePath;
  String title;
  String desc;

  SliderModel({this.imagePath, this.title, this.desc});

  void setImageAssetPath(String getImagepath) {
    imagePath = getImagepath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imagePath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();

  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setImageAssetPath("assets/images/i1.jpg");
  sliderModel.setTitle("Günlük Görevler");
  sliderModel.setDesc(
      "Günlük olarak yapacaklarının bir listesini burada tutabilirsin. Hatta kendine göre özel görev kategorileri oluşturup kullanabilirsin.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //2
  sliderModel.setImageAssetPath("assets/images/i2.jpg");
  sliderModel.setTitle("Herşeyi Bir Arada Gör");
  sliderModel.setDesc(
      "Bütün gününü bir arada görmek zamanını yönetmeyi kolaylaştıracak. Bize güven ve hayatını organize etmemize izin ver!");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //2
  sliderModel.setImageAssetPath("assets/images/i3.jpg");
  sliderModel.setTitle("Günlük Görevler");
  sliderModel.setDesc("alkjsdlaksjdlaksjdlsajdlasjdlaskjdlasjdlasjdlalskd");
  slides.add(sliderModel);

  return slides;
}
