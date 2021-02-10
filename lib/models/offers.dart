class Offers {
  String name;
  String image;
  double price;
  String salonid;
  String offerid;
  String discription;

  Offers(
      {this.discription,
      this.image,
      this.name,
      this.offerid,
      this.price,
      this.salonid});
}

List<Offers> offers = [
  Offers(
      name: "Bridal Beauty Makeup",
      image:
          "https://d168jcr2cillca.cloudfront.net/uploadimages/sales_offer_mainpic_20101223174722Juice_Banner.png",
      price: 10000,
      discription: "Bridal makeup with hairstyling and full body glowing ",
      salonid: "bsfbbvsbvskvbskv",
      offerid: "wsvsvsvsvsvsv"),
];
