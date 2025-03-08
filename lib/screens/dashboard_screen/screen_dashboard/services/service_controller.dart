// service_controller.dart
import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service/service_create.dart';
import 'package:ui/model/service/service_list.dart';
import 'package:ui/services/service_plan/service_plan_implmentation.dart';

class ServiceController {
  final ServicePlanImplmentation _apiService = ServicePlanImplmentation();

  Future<GenericResponse> getServices() async {
    try {
      final response = await _apiService.getBaseServiceItem();
      if (response.status == ResponseStatus.success) {
        await _saveToLocal(response.obj ?? []);
      }
      return response;
    } catch (e) {
      log("Error fetching services: $e");
      return GenericResponse(
        message: "Failed to fetch services",
        obj: await _loadFromLocal(),
        code: 500, // كود خطأ مناسب
        status: ResponseStatus.fail, // استبدال error ب fail
      );
    }
  }

  Future<GenericResponse> createService(Map<String, String> data) async {
    try {
      final newService = ServiceCreate(
        name: data['name']!,
        nameAr: data['nameAr']!,
        price: double.tryParse(data['price']!) ?? 0.0,
        validFor: data['validFor']!,
        description: data['description']!,
        descriptionAr: data['descriptionAr']!,
        isBestValue: data['isBestValue']!.toLowerCase() == 'true',
        items: [],
      );

      final response = await _apiService.createServiceItem(newService);
      if (response.status == ResponseStatus.success) {
        await _saveToLocal([response.obj!]);
      }
      return response;
    } catch (e) {
      log("Error creating service: $e");
      return GenericResponse(
        message: "Failed to create service",
        code: 500,
        status: ResponseStatus.fail,
      );
    }
  }

  Future<GenericResponse> updateService(
    Map<String, String> data,
    ServiceList existing,
  ) async {
    try {
      final updatedService = ServiceList(
        id: existing.id,
        name: data['name'] ?? existing.name,
        nameAr: data['nameAr'] ?? existing.nameAr,
        price: double.tryParse(data['price'] ?? '') ?? existing.price,
        validFor: data['validFor'] ?? existing.validFor,
        isBestValue: data['isBestValue']?.toLowerCase() == 'true' ??
            existing.isBestValue,
        discount: int.tryParse(data['discount'] ?? '') ?? existing.discount,
        description: data['description'] ?? existing.description,
        descriptionAr: data['descriptionAr'] ?? existing.descriptionAr,
      );
      final response = await _apiService.updateServiceItem();
      if (response.status == ResponseStatus.success) {
        await _saveToLocal([response.obj!]);
      }
      return response;
    } catch (e) {
      log("Error updating service: $e");
      return GenericResponse(
        message: "Failed to update service",
        code: 500,
        status: ResponseStatus.fail,
      );
    }
  }

  Future<GenericResponse> deleteService(ServiceList service) async {
    try {
      final response = await _apiService.detailsServiceItem();
      if (response.status == ResponseStatus.success) {
        await _removeFromLocal(service);
      }
      return response;
    } catch (e) {
      log("Error deleting service: $e");
      return GenericResponse(
        message: "Failed to delete service",
        code: 500,
        status: ResponseStatus.fail,
      );
    }
  }

  Future<void> _saveToLocal(List<ServiceList> services) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = services.map((s) => s.toJson()).toList();
    prefs.setString('services', jsonEncode(jsonList));
  }

  Future<List<ServiceList>> _loadFromLocal() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('services');
    if (data == null) return [];

    try {
      final jsonList = jsonDecode(data) as List<dynamic>;
      return jsonList.map((e) => ServiceList.fromJson(e)).toList();
    } catch (e) {
      log("Error loading local services: $e");
      return [];
    }
  }

  Future<void> _removeFromLocal(ServiceList service) async {
    final services = await _loadFromLocal();
    services.removeWhere((s) => s.id == service.id);
    await _saveToLocal(services);
  }
}
