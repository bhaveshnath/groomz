class Services {
  String name;
  String image;
  List<String> types;

  Services({this.name, this.image, this.types});
}

List<Services> services = [
  Services(
      name: "HairStyling",
      types: ["One Sided", "Box Cut"],
      image:
          "https://i.pinimg.com/originals/1a/0d/d9/1a0dd909b89b2940bf9e352f41ad219c.jpg"),
  Services(
      name: "Facial",
      types: ["Full facial", "Organic facial"],
      image:
          "https://static.toiimg.com/thumb/63629557.cms?width=680&height=512&imgsize=529814"),
  Services(
      name: "Treaming",
      types: ["Full tream", "Half treaming"],
      image:
          "https://5.imimg.com/data5/AS/DT/GLADMIN-33474712/hair-trimming-men-500x500.png"),
  Services(
      name: "Shaving",
      types: ["Full tream", "Half treaming"],
      image:
          "https://5.imimg.com/data5/JM/CT/GLADMIN-61445935/mens-shaving-service-500x500.png"),
  Services(
      name: "Bridal",
      types: ["Full tream", "Half treaming"],
      image:
          "https://images-na.ssl-images-amazon.com/images/I/71dfma1KC9L._SL1280_.jpg"),
  Services(
      name: "Gromming",
      types: ["Full tream", "Half treaming"],
      image:
          "https://i.pinimg.com/originals/7a/73/d2/7a73d26f312c6f4d833442ea8f85a654.png"),
  Services(
      name: "Makeup",
      types: ["Full tream", "Half treaming"],
      image: "https://i.ytimg.com/vi/3XeWKybEOFA/maxresdefault.jpg"),
];
