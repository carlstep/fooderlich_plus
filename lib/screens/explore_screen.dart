import 'package:flutter/material.dart';

import 'package:fooderlich/components/components.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  // creates a service to mock a server response
  final mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // a placeholder
    // TODO 1: Add TodayRecipeListView FutureBuilder
    return const Center(
      child: Text('Explore Screen'),
    );
  }
}