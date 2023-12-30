import 'package:flutter/material.dart';

class LocationSelect extends StatefulWidget {
  const LocationSelect({super.key});

  @override
  State<LocationSelect> createState() => _LocationSelectState();
}

class _LocationSelectState extends State<LocationSelect> {
  final _cities = ['서울', '인천', '대전', '대구', '부산', '울산', '광주'];
  String _selectedCity = '';

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedCity = _cities[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          '지역 선택',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 20),
        DropdownButton(
          value: _selectedCity,
          items: _cities
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              _selectedCity = value!;
            });
          },
        ),
      ],
    );
  }
}
