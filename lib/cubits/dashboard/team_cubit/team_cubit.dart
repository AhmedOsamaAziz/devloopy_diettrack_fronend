import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/cubits/dashboard/team_cubit/team_state.dart';
import 'package:ui/model/team/team_list.dart';

class TeamCubit extends Cubit<TeamState> {
  List<TeamList> _teams = []; // Initialize with an empty list
  final ImagePicker _picker = ImagePicker();

  TeamCubit() : super(TeamInitial()) {
    loadTeams();
  }

  Future<void> loadTeams() async {
    emit(TeamLoading());

    final prefs = await SharedPreferences.getInstance();
    final String? teamJson = prefs.getString('Team');

    if (teamJson != null) {
      // Parse JSON data if available
      _teams = (jsonDecode(teamJson) as List)
          .map((e) => TeamList.fromJson(e))
          .toList();
    }

    emit(TeamLoaded(teams: _teams));
  }

  Future<void> addOrUpdateTeam(TeamList team, {int? index}) async {
    if (index == null) {
      _teams.add(team); // Add new team
    } else {
      _teams[index] = team; // Update existing team
    }
    await _saveTeams(); // Save updated teams to storage
    emit(TeamLoaded(teams: _teams)); // Emit the updated teams
    print("Teams updated: $_teams"); // Debugging
  }

  Future<void> deleteTeam(int index) async {
    if (index < 0 || index >= _teams.length) {
      emit(TeamError("Invalid team index."));
      return; // Handle invalid index
    }

    _teams.removeAt(index);
    await _saveTeams();
    emit(TeamLoaded(teams: _teams));
  }

  Future<void> _saveTeams() async {
    final prefs = await SharedPreferences.getInstance();
    final teamJson = jsonEncode(_teams.map((team) => team.toJson()).toList());
    prefs.setString('Team', teamJson); // Save teams as JSON
  }

  void pickImage(Function(String) onImagePicked) async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        onImagePicked(pickedFile.path);
      } else {
        emit(TeamError("No image selected."));
      }
    } catch (e) {
      emit(TeamError("Error picking image: $e"));
    }
  }
}
