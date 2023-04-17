import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/pertemuan06/pertemuan06_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan06Screen extends StatefulWidget {
  const Pertemuan06Screen({super.key});

  @override
  State<Pertemuan06Screen> createState() => _Pertemuan06ScreenState();
}

class _Pertemuan06ScreenState extends State<Pertemuan06Screen> {
  String itemSelected = 'Pilih Pekerjaan';
  String itemSelected1 = 'Cita-Cita';
  List items = [
    'Pilih Pekerjaan',
    'sekolah',
    'buruh pabrik',
    'atlet',
    'gojek',
    'manager',
    'influencer',
    'PNS',
    'pengusaha'
  ];

  List items1 = [
    'Cita-Cita',
    'miliyarder',
    'Programmer',
    'atlet',
  ];

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan06Provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Switches | DropdownB.'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark mode theme'),
                Switch(
                    value: prov.enableDarkMode,
                    activeColor: Colors.green,
                    onChanged: (val) {
                      prov.setBrightness = val;
                    })
              ],
            ),
            if (prov.enableDarkMode == true)
              DropdownButton(
                  items: items1.map((item) {
                    return DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    );
                  }).toList(),
                  value: itemSelected1,
                  onChanged: (val) {
                    setState(() {
                      itemSelected1 = val as String;
                    });
                  }),
            if (itemSelected1 == "miliyarder")
              Text('saya suka uang')
            else if (itemSelected1 == "Game Developer")
              Text('saya suka bermain game')
            else if (itemSelected1 == "Programmer")
              Text('saya suka ngoding')
            else if (itemSelected1 == "atlet")
              Text('saya suka mendesain')
            else if (itemSelected1 == "Cita-Cita")
              Text('apa yang kamu suka'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Pekerjaan'),
                DropdownButton(
                    items: items.map((item) {
                      return DropdownMenuItem(
                        child: Text(item),
                        value: item,
                      );
                    }).toList(),
                    value: itemSelected,
                    onChanged: (val) {
                      setState(() {
                        itemSelected = val as String;
                      });
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
