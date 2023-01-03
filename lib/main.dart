import 'package:flutter/material.dart';
import 'package:price_car/TextFieldwidget.dart';

import 'buttonWidget.dart';
import 'dropdownButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    List<String> items = <String>[
      'Tehran',
      'Tabriz',
      'Urmia',
      'Mashhad',
      'Isfahan',
      'Karaj',
      'Shiraz',
      'Qom',
      'Ahvaz',
      'Kermanshah',
    ];
    List<String> brand = <String>[
      '206 SD V8',
    ];
    List<String> Gearbox = <String>[
      'manual',
    ];
    List<String> BackChassis = <String>[
      'noting',
      'intact',
      'impact',
      'colored',
    ];
    List<String> FrontChassis = <String>[
      'noting',
      'intact',
      'impact',
      'colored',
    ];
    List<String> BodyCondition = <String>[
      'noting',
      'intact',
      'monor scratch',
      'collision repair',
      'colored',
      'round colored',
      'whole colored',
      'accident',
      'scrap',
    ];
    List<String> EngineCondition = <String>[
      'noting',
      'intact',
      'monor scratch',
      'collision repair',
      'colored',
      'round colored',
      'whole colored',
      'accident',
      'scrap',
    ];
    List<String> Tpi = <String>[
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      '11',
      '12',
    ];
    List<String> carColor = <String>[
      'white',
      'black',
      'blue',
      'cerise',
      'dimgray',
      'dolphin',
      'seashell',
      'silver',
    ];
    List<String> ProductionYeae = <String>[
      '1380',
      '1381',
      '1382',
      '1383',
      '1384',
      '1385',
      '1386',
      '1387',
      '1388',
      '1389',
      '1390',
      '1391',
      '1392',
      '1393',
      '1394',
      '1395',
      '1396',
      '1397',
      '1398',
      '1399',
      '1400',
      '1401',
    ];
    String? selectedItem = 'Tehran';
    String? selectedColorItem = 'white';
    String? selectedTpiItem = '1';
    String? selectedBackChassisItem = 'noting';
    String? selectedBodyConditionItem = 'noting';
    String? selectedEngineConditionItem = 'noting';
    String? selectedFrontChassisItem = 'noting';
    String? selectedBrandItem = '206 SD V8';
    String? selectedGearboxItem = 'manual';
    String? selectedProductionYeaeItem = '1401';
    // String? productionYeae = '1401';
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                width: size.width,
                height: 60,
                // decoration: const BoxDecoration(
                //   color: Colors.blue,

                // ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_back_ios),
                      Text(
                        "Peugeot 206 SD V8",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.menu),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width,
                height: 200,
                child: Image.asset("assets/images/206Car.jpeg"),
              ),
              const SizedBox(
                height: 25,
              ),

              Expanded(
                child: ListView(
                  children: [
                    // city
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text("City :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              width: size.width / 2.5,
                              child:
                                  dropdownButton(selectedItem, items, textTheme)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
              
                    // brand
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text("Brand :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              width: size.width / 2.5,
                              child: dropdownButton(
                                  selectedBrandItem, brand, textTheme)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    // ProductionYear
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text("ProductionYear :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              width: size.width / 2.5,
                              child: dropdownButton(selectedProductionYeaeItem,
                                  ProductionYeae, textTheme)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    
                    // color
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text("Color :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              width: size.width / 2.5,
                              child: dropdownButton(
                                  selectedColorItem, carColor, textTheme)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // Tpi
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text("Tpi :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              width: size.width / 2.5,
                              child: dropdownButton(
                                  selectedTpiItem, Tpi, textTheme)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // BodyCondition
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text("BodyCondition :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              width: size.width / 2.5,
                              child: dropdownButton(
                                  selectedBodyConditionItem, BodyCondition, textTheme)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // FrontChassis
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text("FrontChassis :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              width: size.width / 2.5,
                              child: dropdownButton(
                                  selectedFrontChassisItem, FrontChassis, textTheme)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // BackChassis
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text("BackChassis :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              width: size.width / 2.5,
                              child: dropdownButton(
                                  selectedBackChassisItem, BackChassis, textTheme)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
              
                    // usage(km)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text("usage(km) :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              width: size.width / 2.5,
                              child: const TextFieldWidget(
                                borderSideColor: Colors.black,
                                hintText: "",
                                obscureText: true,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),




              
                    const SizedBox(
                      height: 40,
                    ),

                    // button submit
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width / 5),
                      child: InkWell(
                        child: const ButtonWidget(
                          title: "Submit",
                          blu: true,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
