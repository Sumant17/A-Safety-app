import 'package:flutter/material.dart';

class MedicalDetails extends StatefulWidget {
  const MedicalDetails({Key? key}) : super(key: key);

  @override
  State<MedicalDetails> createState() => _MedicalDetailsState();
}

class _MedicalDetailsState extends State<MedicalDetails> {
  final Map<String, String> _details = {
    'Blood Type': '',
    'Allergies': '',
    'Medical Conditions': '',
    'Medications': '',
    'Additional Notes': '',
  };

  // List<String> bloodtypes = [
  //   'A+',
  //   'A-',
  //   'B+',
  //   'B-',
  //   'AB+',
  //   'AB-',
  //   'O+',
  //   'O-',
  // ];

  void _updateDetails(String detailName, String detailValue) {
    setState(() {
      _details[detailName] = detailValue;
    });
  }

  void _showDialog(String detailName) {
    final dialogWidth = MediaQuery.of(context).size.width * 0.8;
    final TextEditingController controller = TextEditingController();

    // if (detailName == 'Blood Type') {
    //   showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: const Text('Select Blood Type'),
    //         content: StatefulBuilder(
    //             builder: (BuildContext context, StateSetter setState) {
    //           String? _selectedBloodType = _details[detailName];
    //           return Container(
    //             height: 300,
    //             width: dialogWidth,
    //             child: Scrollbar(
    //               child: ListView.builder(
    //                 itemCount: bloodtypes.length,
    //                 itemBuilder: (BuildContext context, int index) {
    //                   final bloodType = bloodtypes[index];
    //                   return RadioListTile(
    //                     title: Text(bloodType),
    //                     value: bloodType,
    //                     groupValue: _selectedBloodType,
    //                     onChanged: (String? value) {
    //                       setState(() {
    //                         _selectedBloodType=value;
    //                         _details[detailName] = value!;
    //                       });
    //                     },
    //                   );
    //                 },
    //               ),
    //             ),
    //           );

    //         },
    //         ),
    //         actions: [
    //           TextButton(
    //               onPressed: () {

    //                 _updateDetails(detailName, _selectedBloodType!);
    //                 Navigator.of(context).pop();

    //               },
    //               child: const Text('Save')
    //           ),
    //           TextButton(
    //             child: const Text('Cancel'),
    //             onPressed: () {
    //               Navigator.of(context).pop();
    //             },
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // } else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter $detailName'),
          content: TextField(
            controller: controller,
            autofocus: true,
          ),
          actions: [
            TextButton(
              child: const Text('Save'),
              onPressed: () {
                _updateDetails(detailName, controller.text);
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    // }
  }

  Widget _buildDetailItem(String detailName, String detailValue) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(
          detailName,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: detailValue.isEmpty ? const Text('N/A') : Text(detailValue),
        onTap: () => _showDialog(detailName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> detailItems = [];

    _details.forEach((detailName, detailValue) {
      detailItems.add(_buildDetailItem(detailName, detailValue));
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical Details'),
      ),
      body: ListView(
        children: detailItems,
      ),
    );
  }
}
