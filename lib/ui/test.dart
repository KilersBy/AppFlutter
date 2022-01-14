import 'package:app1/model/Equipement.dart';
import 'package:app1/ui/widget/equipementWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'widget/infosWidget.dart';

class Test extends StatelessWidget {
  final RxList<Equipement> equipementList;

  const Test({Key? key, required this.equipementList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int tailleEquipement = equipementList.length;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          equipementList.add(Equipement(
              name: "OKMany $tailleEquipement",
              numSerie: "2673829$tailleEquipement"));
          tailleEquipement++;
        },
      ),
      backgroundColor: Colors.grey.shade200,
      body: Obx(() => Container(
          margin: const EdgeInsets.only(left: 50.0, top: 50.0),
          width: size.width * 1,
          height: size.height * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Infos(),
              Text(
                'Equipements ($tailleEquipement)',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.red),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: size.width * 1,
                height: size.height * 0.5,
                child: ListView(
                  padding: EdgeInsets.all(10),
                  children: List.generate(
                      equipementList.length,
                      (index) => Column(
                            children: [
                              Equipements(
                                titre: equipementList[index].name,
                                numSerie: equipementList[index].numSerie,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          )),
                ),
              ),
            ],
          ))),
    );
  }
}
