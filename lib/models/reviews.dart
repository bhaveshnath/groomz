class Reviews {
  String name;
  String image;
  String review;
  String uid;
  int time;
  double rating;

  Reviews(
      {this.time, this.image, this.name, this.review, this.uid, this.rating});
}

List<Reviews> reviews = [
  Reviews(
      name: "Raj Shah",
      image:
          "https://images.unsplash.com/photo-1577975882846-431adc8c2009?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1000&q=80",
      review:
          "I really like the service of this app , it works so smooth and best service",
      rating: 5,
      uid: "knfnknsknsfnsf",
      time: 2),
  Reviews(
      name: "Nischinta N",
      image:
          "https://i.pinimg.com/736x/53/ff/05/53ff0591adc2b77ac000aca68791365a.jpg",
      review:
          "I really like the service of this app , it works so smooth and best service",
      rating: 5,
      uid: "knfnknsknsfnsf",
      time: 2),
  Reviews(
      name: "Suraj Gud",
      image:
          "https://static.vibe.com/files/2018/02/caleb-mclaughlin-black-boy-joy-1519253017-1298x1950.jpg",
      review:
          "I really like the service of this app , it works so smooth and best service",
      rating: 5,
      uid: "knfnknsknsfnsf",
      time: 2),
];
