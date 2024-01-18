import 'package:flutter/material.dart';


class Tourist {
  String name;
  String passportNumber;
  // Другие поля, которые нужны в туристической информации

  Tourist({required this.name, required this.passportNumber});
}

class TouristEntry extends StatefulWidget {
  @override
  _TouristEntryState createState() => _TouristEntryState();
}

class _TouristEntryState extends State<TouristEntry> {
  List<Tourist> tourists = [Tourist(name: '', passportNumber: '')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Туристическая информация'),
      ),
      body: ListView.builder(
        itemCount: tourists.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Турист ${index + 1}'),
              subtitle: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Имя туриста',
                ),
                onChanged: (value) {
                  setState(() {
                    tourists[index].name = value;
                  });
                },
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    tourists.removeAt(index);
                  });
                },
              ),
            ),
          );
        },
      ),
     
    );
  }
}
