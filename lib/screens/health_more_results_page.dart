import 'package:flutter/material.dart';

class MoreResultPage extends StatelessWidget {
  const MoreResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Health Results',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Diagnosis Results',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.network(
                  'https://as2.ftcdn.net/v2/jpg/02/81/42/77/1000_F_281427785_gfahY8bX4VYCGo6jlfO8St38wS9cJQop.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Summary of the health issue diagnosed with severity: Moderate. Further treatments and home remedies are recommended.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Suggested Treatments',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 10),
            const Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                TreatmentCard(
                  title: 'Physiotherapy',
                  description:
                      'Recommended for muscle pain and stiffness.\nNote: Consult with Dr. Smith for a customized plan.',
                  imageUrl:
                      'https://as2.ftcdn.net/v2/jpg/02/81/42/77/1000_F_281427785_gfahY8bX4VYCGo6jlfO8St38wS9cJQop.jpg',
                ),
                TreatmentCard(
                  title: 'Acupuncture',
                  description:
                      'Helps to relieve chronic back pain.\nNote: Dr. Lee specializes in this treatment.',
                  imageUrl:
                      'https://as2.ftcdn.net/v2/jpg/02/81/42/77/1000_F_281427785_gfahY8bX4VYCGo6jlfO8St38wS9cJQop.jpg',
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Home Remedies',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 10),
            const Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                RemedyCard(
                  title: 'Ginger Tea',
                  description:
                      'Ginger tea can help soothe nausea and improve digestion.',
                  imageUrl:
                      'https://as2.ftcdn.net/v2/jpg/02/81/42/77/1000_F_281427785_gfahY8bX4VYCGo6jlfO8St38wS9cJQop.jpg',
                ),
                RemedyCard(
                  title: 'Honey & Lemon',
                  description:
                      'A mixture of honey and lemon can relieve sore throat symptoms.',
                  imageUrl:
                      'https://as2.ftcdn.net/v2/jpg/02/81/42/77/1000_F_281427785_gfahY8bX4VYCGo6jlfO8St38wS9cJQop.jpg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TreatmentCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const TreatmentCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      height: MediaQuery.of(context).size.height * 0.25,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  overflow: TextOverflow.visible),
            ),
          ],
        ),
      ),
    );
  }
}

class RemedyCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const RemedyCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      height: MediaQuery.of(context).size.height * 0.25,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
