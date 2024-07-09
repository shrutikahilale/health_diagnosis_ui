import 'package:flutter/material.dart';
import 'package:health_diagnosis_ui/screens/health_more_results_page.dart';

class HealthResultsPage extends StatelessWidget {
  const HealthResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Wrap(
                  spacing: 8.0,
                  children: [
                    Chip(label: Text('Headache')),
                    Chip(label: Text('Fever')),
                  ],
                ),
                const SizedBox(height: 24),
                Center(
                  child: Text(
                    'Results',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.coronavirus),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Potential Illness: Influenza'),
                                const SizedBox(height: 8),
                                const Text(
                                  'Influenza, commonly known as the flu, is a viral infection that attacks your respiratory system.',
                                  style:
                                      TextStyle(overflow: TextOverflow.visible),
                                ),
                                const SizedBox(height: 8),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MoreResultPage()));
                                  },
                                  child: const Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: [
                                      Icon(Icons.info),
                                      SizedBox(width: 10),
                                      Text('Learn More')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                buildResultCard(
                  context: context,
                  title: 'Common Cold',
                  description:
                      'Common cold caused by rhinovirus, leading to sneezing, congestion, and sore throat.',
                ),
                buildResultCard(
                  context: context,
                  title: 'Bacterial Infection',
                  description:
                      'Bacterial infection causing symptoms like fever, chills, and fatigue.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildResultCard(
      {required BuildContext context,
      required String title,
      required String description}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(31, 47, 47, 47)),
        borderRadius: BorderRadius.circular(4),
      ),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(description,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Learn More'),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              width: 100,
              height: 100,
              color: Colors.grey.shade200,
              child: const Icon(Icons.image, size: 50, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
