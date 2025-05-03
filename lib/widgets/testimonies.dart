import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_colors.dart';

studentTestimony1(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(purpleColor),
    ),

    child: Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //-- Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Icon(Icons.star, color: Colors.yellow, size: 17),
            ],
          ),
          Text(
            "My name is Emmaanuel T, i am a Blockchain developer and i am lucky a platform like Stockup exist, without their efforts and dedication i wouldn't be what i am today",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              height: 1.9,
              color: Colors.white,
              fontSize: 14.5,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-- Image
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/girl1.png"),
                  ),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-- Text1
                      Text(
                        "Emmanuel T",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                      ),
                      //-- Text2
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "Blockchain Developer",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

studentTestimony2(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.pink,
    ),

    child: Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //-- Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Icon(Icons.star, color: Colors.yellow, size: 17),
            ],
          ),
          Text(
            "My name is Emmaanuel T, i am a Blockchain developer and i am lucky a platform like Stockup exist, without their efforts and dedication i wouldn't be what i am today",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              height: 1.9,
              color: Colors.white,
              fontSize: 14.5,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-- Image
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/girl1.png"),
                  ),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-- Text1
                      Text(
                        "Emmanuel T",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                      ),
                      //-- Text2
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "Blockchain Developer",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

studentTestimony3(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.green,
    ),

    child: Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //-- Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Icon(Icons.star, color: Colors.yellow, size: 17),
            ],
          ),
          Text(
            "My name is Emmaanuel T, i am a Blockchain developer and i am lucky a platform like Stockup exist, without their efforts and dedication i wouldn't be what i am today",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              height: 1.9,
              color: Colors.white,
              fontSize: 14.5,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-- Image
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/girl1.png"),
                  ),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-- Text1
                      Text(
                        "Emmanuel T",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                      ),
                      //-- Text2
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "Blockchain Developer",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

//-- Tablet Testimoney Views
studentTabletTestimony1(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.pink,
    ),

    child: Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //-- Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Icon(Icons.star, color: Colors.yellow, size: 17),
            ],
          ),
          Text(
            "My name is Emmaanuel T, i am a Blockchain developer\nand i am lucky a platform like Stockup exist, without\ntheir efforts and dedication i wouldn't be what i am today",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              height: 1.9,
              color: Colors.white,
              fontSize: 14.5,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-- Image
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/girl1.png"),
                  ),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-- Text1
                      Text(
                        "Emmanuel T",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                      ),
                      //-- Text2
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "Blockchain Developer",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

studentTabletTestimony2(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.green,
    ),

    child: Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //-- Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Icon(Icons.star, color: Colors.yellow, size: 17),
            ],
          ),
          Text(
            "My name is Emmaanuel T, i am a Blockchain developer\nand i am lucky a platform like Stockup exist, without\ntheir efforts and dedication i wouldn't be what i am today",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              height: 1.9,
              color: Colors.white,
              fontSize: 14.5,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-- Image
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/girl1.png"),
                  ),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-- Text1
                      Text(
                        "Emmanuel T",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                      ),
                      //-- Text2
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "Blockchain Developer",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

studentTabletTestimony3(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(purpleColor),
    ),

    child: Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //-- Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 17),
              ),
              Icon(Icons.star, color: Colors.yellow, size: 17),
            ],
          ),
          Text(
            "My name is Emmaanuel T, i am a Blockchain developer\nand i am lucky a platform like Stockup exist, without\ntheir efforts and dedication i wouldn't be what i am today",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              height: 1.9,
              color: Colors.white,
              fontSize: 14.5,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-- Image
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/girl1.png"),
                  ),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-- Text1
                      Text(
                        "Emmanuel T",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                      ),
                      //-- Text2
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "Blockchain Developer",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
