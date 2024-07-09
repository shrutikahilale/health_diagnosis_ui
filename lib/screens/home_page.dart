import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:health_diagnosis_ui/screens/get_data.dart';

class HealthDiagnosisPage extends StatefulWidget {
  const HealthDiagnosisPage({super.key});

  @override
  State<HealthDiagnosisPage> createState() => _HealthDiagnosisPageState();
}

class _HealthDiagnosisPageState extends State<HealthDiagnosisPage> {
  final _searchQueryCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Diagnosis'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Input Symptoms',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _searchQueryCtrl,
                keyboardAppearance: Brightness.light,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search symptoms',
                ),
                onSubmitted: (String value) {
                  if (kDebugMode) {
                    print('value entered : $value');
                  }

                  if (value.isNotEmpty) {
                    _searchQueryCtrl.clear();

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GetData()));
                  }
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
