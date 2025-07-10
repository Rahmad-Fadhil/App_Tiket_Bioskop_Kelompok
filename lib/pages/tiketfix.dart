import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/ticketProvider.dart';
import 'tiketberhasil.dart';

class TiketFix extends StatefulWidget {
  final String judul;
  final String genre;

  const TiketFix({
    super.key,
    required this.judul,
    required this.genre,
  });

  @override
  State<TiketFix> createState() => _TiketFixState();
}

class _TiketFixState extends State<TiketFix> {
  DateTime? tanggalNow;
  TimeOfDay? waktuNow;

  String _selectedLanguage = 'Cinema XXI - Centre Point Mall Medan';

  String formatTanggal(DateTime dt) {
    String hari = DateFormat('EEEE', 'id_ID').format(dt);
    return "hari: $hari  tanggal: ${dt.day}";
  }

  _minggu1(BuildContext context) async {
    var tmp = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year, DateTime.now().month + 1, 0),
    );
    if (tmp != null) {
      setState(() {
        tanggalNow = tmp;
      });
    }
  }

  _WaktuPerHari(BuildContext context) async {
    var wib = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 10, minute: 0),
    );
    if (wib != null) {
      if ((wib.minute == 30 || wib.minute == 0) && wib.hour < 22) {
        setState(() {
          waktuNow = wib;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                "Tidak Bisa memilih waktu lewat dari jam 22.00 dan harus menit 30"),
          ),
        );
      }
    }
  }

  String formatWaktu(TimeOfDay tod) {
    final jam = tod.hour.toString().padLeft(2, '0');
    final menit = tod.minute.toString().padLeft(2, '0');
    return "$jam:$menit";
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
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Select Cinema"),
                    trailing: Text(
                      "Changes",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  SizedBox(height: 15),
                  DropdownButton<String>(
                    isExpanded: true,
                    value: _selectedLanguage,
                    items: const [
                      DropdownMenuItem(
                          value: 'Cinema XXI - Centre Point Mall Medan',
                          child: Text('Cinema XXI - Centre Point Mall Medan')),
                      DropdownMenuItem(
                          value: 'Thamrin XXI', child: Text('Thamrin XXI')),
                      DropdownMenuItem(
                          value: 'Cinema XXI & IMAX Delipark Podomoro',
                          child: Text('Cinema XXI & IMAX Delipark Podomoro')),
                      DropdownMenuItem(
                          value: 'Millennium XXI',
                          child: Text('Millennium XXI')),
                      DropdownMenuItem(
                          value: 'XXI Manhattan Square',
                          child: Text('XXI Manhattan Square')),
                      DropdownMenuItem(
                          value: 'Hermes XXI', child: Text('Hermes XXI')),
                      DropdownMenuItem(
                          value: 'Cinepolis cinema Sun Plaza',
                          child: Text('Cinepolis cinema Sun Plaza')),
                      DropdownMenuItem(
                          value: 'Ringroad City Walks XXI',
                          child: Text('Ringroad City Walks XXI')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  SizedBox(height: 15),
                  ListTile(
                    title: Text("Select Date & Time"),
                    trailing: Icon(Icons.date_range),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      _minggu1(context);
                    },
                    child: Text("Pilih tanggal"),
                  ),
                  SizedBox(height: 15),
                  if (tanggalNow != null)
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.calendar_today),
                        title: Text("Tanggal Nonton"),
                        subtitle: Text(formatTanggal(tanggalNow!)),
                      ),
                    ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      _WaktuPerHari(context);
                    },
                    child: Text("Pilih Waktu"),
                  ),
                  SizedBox(height: 15),
                  if (waktuNow != null)
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.access_time),
                        title: Text("Waktu Nonton"),
                        subtitle: Text(formatWaktu(waktuNow!)),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (tanggalNow != null && waktuNow != null)
                    ? () {
                        Provider.of<TiketProvider>(context, listen: false).tambahTiket(
                          judul: widget.judul,
                          genre: widget.genre,
                          tempat: _selectedLanguage,
                          tanggal: formatTanggal(tanggalNow!),
                          waktu: formatWaktu(waktuNow!),
                        );
                        
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Tiket Berhasil Dibeli"),
                            content: const Text(
                                "Tiket kamu sudah berhasil dipesan."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context); // Tutup dialog
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          HalamanTiketBerhasil(
                                        judul: widget.judul,
                                        genre: widget.genre,
                                        tempat: _selectedLanguage,
                                        tanggal: formatTanggal(tanggalNow!),
                                        waktu: formatWaktu(waktuNow!),
                                      ),
                                    ),
                                  );
                                },
                                child: const Text("Tampilkan Tiket"),
                              ),
                            ],
                          ),
                        );
                      }
                    : null,
                child: Text("Beli Tiket"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
