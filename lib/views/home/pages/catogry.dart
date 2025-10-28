import '../widgets/catogry_list_view.dart';
import '../widgets/custom_home_text_fild.dart';
import 'package:flutter/material.dart';

class CatogryPage extends StatelessWidget {
  const CatogryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                CustomHomeTextFild(),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: CatogryListView(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
