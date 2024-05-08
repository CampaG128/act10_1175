import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Gap(20),
            topBar(),
            location(),
            const Gap(20),
            searchBar(),
            const Gap(20),
            categories(),
            Expanded(
              child: gridView(), // Added GridView here
            ),
          ],
        ),
      ),
    );
  }

  Widget topBar() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 24,
        ),
        const Gap(20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff98A2B3)),
            ),
            Text(
              "Gregorio",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff344054)),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xffF2F4F7),
          child: Image.asset("assets/notificacion.png", height: 20),
        )
      ],
    );
  }

  Widget location() {
    return const Row(
      children: [
        Icon(
          Icons.location_on_sharp,
          color: Colors.red,
          size: 16,
        ),
        Gap(10),
        Text(
          "Cd. Juárez, Chih.",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xff98A2B3)),
        ),
      ],
    );
  }

  Widget searchBar() {
    return Container(
      width: Get.width,
      height: 40.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff441511),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Image.asset(
            "assets/busqueda.png",
            color: Color(0xffd4d6db),
          ),
          suffixIcon: Image.asset(
            "assets/filtrar.png",
            color: Color(0xffd4d6db),
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20.0),
          suffixIconConstraints: BoxConstraints(maxHeight: 24.0),
          border: InputBorder.none,
          fillColor: Color(0xff441511),
          filled: true,
          hintText: "Buscar...",
          hintStyle: TextStyle(
            fontSize: 14,
            color: Color(0xffd4d6db),
          ),
        ),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categoría"),
        Gap(10),
        SizedBox(
          height: 42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Color(0xff441511),
                ),
                child: Center(
                  child: Text(
                    "Todos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffb3b8bf), width: 1.5)),
                child: Center(
                  child: Text(
                    "Novedades",
                    style: TextStyle(
                      color: Color(0xffb3b8bf),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffb3b8bf), width: 1.5)),
                child: Center(
                  child: Text(
                    "Equipos",
                    style: TextStyle(
                      color: Color(0xffb3b8bf),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffb3b8bf), width: 1.5)),
                child: Center(
                  child: Text(
                    "Pilotos",
                    style: TextStyle(
                      color: Color(0xffb3b8bf),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffb3b8bf), width: 1.5)),
                child: Center(
                  child: Text(
                    "Desinfectantes",
                    style: TextStyle(
                      color: Color(0xffb3b8bf),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffb3b8bf), width: 1.5)),
                child: Center(
                  child: Text(
                    "Ajustadores",
                    style: TextStyle(
                      color: Color(0xffb3b8bf),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget gridView() {
    return GridView.count(
      primary: false,
      childAspectRatio: 0.83,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF0F4EF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffB5C9AD),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/camisa.png",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Polo ferrari",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("40.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff475E3E))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF0F4EF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffB5C9AD),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/camisa2.png",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Playera Red",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("40.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff475E3E))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF0F4EF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffB5C9AD),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/camisa3.png",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Playera Merc...",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("40.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff475E3E))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF0F4EF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffB5C9AD),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/camisa4.png",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Player Aston",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("40.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff475E3E))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF0F4EF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffB5C9AD),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/camisa.png",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Polo ferrari",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("40.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff475E3E))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF0F4EF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffB5C9AD),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/camisa2.png",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Playera Red",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("40.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff475E3E))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF0F4EF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffB5C9AD),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/camisa3.png",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Playera Merc...",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("40.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff475E3E))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF0F4EF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffB5C9AD),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/camisa4.png",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Player Aston",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("40.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff475E3E))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
