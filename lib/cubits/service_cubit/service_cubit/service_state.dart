import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui/model/service/service_list.dart';

// Service states using Equatable for easier state management
abstract class ServiceState extends Equatable {
  const ServiceState();

  @override
  List<Object?> get props => [];
}

class ServiceInitial extends ServiceState {}

class ServiceLoading extends ServiceState {}

class ServiceNoData extends ServiceState {}

class ServiceSuccess extends ServiceState {
  final List<ServiceList> service;

  const ServiceSuccess(this.service);

  @override
  List<Object?> get props => [service];
}

class ServiceFailure extends ServiceState {
  final Widget noDataMessage = const Text(
    'Not Available Details right now.',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}
