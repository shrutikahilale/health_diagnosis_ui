import 'package:flutter/material.dart';
import 'package:health_diagnosis_ui/screens/health_results_page.dart';

class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    // Simulating an API call delay
    await Future.delayed(const Duration(seconds: 3));

    // After receiving the API response, navigate to another screen
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HealthResultsPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}