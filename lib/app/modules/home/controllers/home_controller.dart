import 'dart:convert';

import 'package:dynamic_item_list_view_flutter_getx/app/data/model/employee_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<List<EmployeeModel>> employees = Rx<List<EmployeeModel>>([]);
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController addressTextEditingController = TextEditingController();
  late EmployeeModel employeeModel;
  var itemCount = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameTextEditingController.dispose();
    addressTextEditingController.dispose();
  }

  addEmployee(String name, String address) {
    employeeModel = EmployeeModel(name: name, address: address);
    employees.value.add(employeeModel);
    itemCount.value = employees.value.length;
    nameTextEditingController.clear();
    addressTextEditingController.clear();
  }

  removeEmployee(int index) {
    employees.value.removeAt(index);
    itemCount.value = employees.value.length;
  }
}
