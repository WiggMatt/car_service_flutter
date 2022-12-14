import 'package:car_service/presentation/widgets/controls_of_contracts_table_widget.dart';
import 'package:car_service/presentation/widgets/drawer_widget.dart';
import 'package:car_service/presentation/widgets/table_contract_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Договоры'),
      ),
      body: Column(
        children: const [
          Expanded(flex: 6, child: ContractsTable()),
          Expanded(
            flex: 2,
            child: ControlsOfContractsTable(),
          )
        ],
      ),
    );
  }
}
