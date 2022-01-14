import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Equipements extends StatelessWidget {
  final String? titre;
  final String? numSerie;
  const Equipements({Key? key, this.titre, this.numSerie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 50.0),
      width: 800,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titre ?? 'Nouvel Equipement',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(
              height: 10,
            ),
            Text(
              numSerie ?? 'Pas de numéro de série',
              style: const TextStyle(fontSize: 10),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Infos et historique >',
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
