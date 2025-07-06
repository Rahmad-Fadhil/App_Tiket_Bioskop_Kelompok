import 'package:flutter/material.dart';

class TiketFix extends StatefulWidget {
  const TiketFix({super.key});

  @override
  State<TiketFix> createState() => _TiketFixState();
}

class _TiketFixState extends State<TiketFix> {
  
  DateTime?tanggalNow;
  TimeOfDay?waktuNow;

  String _selectedLanguage = 'Cinema XXI - Centre Point Mall Medan';

  String tanggalHariini(DateTime dt) {
    String hari = DateFormat
    return "${dt.day} ${bln[dt.month-1]} ${dt.year}";
  }

  _minggu1(BuildContext context)async{
    var tmp = await showDatePicker(
      context: context, 
      initialDate: DateTime.now(),
      firstDate: DateTime.now(), 
      lastDate: DateTime.now().add(Duration(days: 6))
    );
    if (tmp!=null) {
      setState(() {
        tanggalNow = tmp;
      });
    }
  }

  _WaktuPerHari(BuildContext context)async{
    var wib = await showTimePicker(
      context: context, 
      initialTime: TimeOfDay(hour: 10, minute: 0)
    );
    if (wib!=null) {
      if (wib.minute == 0 && (wib.hour - 10) % 3 == 0) {
        setState(() {
          waktuNow = wib;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text("Select Cinema"),
                trailing: Text("Changes", style: TextStyle(color: Colors.red),),
              ),
              DropdownButton<String>(
                value: _selectedLanguage,
                items: const [
                  DropdownMenuItem(value: 'Cinema XXI - Centre Point Mall Medan', child: Text('Cinema XXI - Centre Point Mall Medan')),
                  DropdownMenuItem(value: 'Thamrin XXI', child: Text('Thamrin XXI')),
                  DropdownMenuItem(value: 'Cinema XXI & IMAX Delipark Podomoro', child: Text('Cinema XXI & IMAX Delipark Podomoro')),
                  DropdownMenuItem(value: 'Millennium XXI', child: Text('Millennium XXI')),
                  DropdownMenuItem(value: 'XXI Manhattan Square', child: Text('XXI Manhattan Square')),
                  DropdownMenuItem(value: 'Hermes XXI', child: Text('Hermes XXI')),
                  DropdownMenuItem(value: 'Cinepolis cinema Sun Plaza', child: Text('Cinepolis cinema Sun Plaza')),
                  DropdownMenuItem(value: 'Ringroad City Walks XXI', child: Text('Ringroad City Walks XXI')),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedLanguage = value!;
                  });
                },
              ),
              ListTile(
                title: Text("Select Date & Time"),
                trailing: Icon(Icons.date_range)
              ),

              // ini untuk pilih tanggal 
              ListView.builder(
                itemCount: tanggalNow,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ChoiceChip(label: index, selected: index)
                },
              ),

              // ini untuk pilih waktu
              ListView.builder(
                itemCount: waktuNow,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ChoiceChip(label: index, selected: index)
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}