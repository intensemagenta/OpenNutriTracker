import 'package:flutter_test/flutter_test.dart';
import 'package:opennutritracker/core/domain/entity/app_theme_entity.dart';
import 'package:opennutritracker/core/domain/entity/config_entity.dart';
import 'package:opennutritracker/features/settings/presentation/bloc/settings_bloc.dart';

class NutrientGoalsSettingsFake extends Fake implements SettingsBloc {
  double? savedCalories;
  double? savedFat;
  double? savedCholesterol;

  @override
  Future<ConfigEntity> getConfig() async =>
      const ConfigEntity(false, false, false, AppThemeEntity.system);

  @override
  Future<void> setManualNutrientGoals({
    required double? fixedKcalGoal,
    required double? fixedFatGoalG,
    required double? cholesterolGoalMg,
    double? saturatedFatGoalG,
    double? sugarGoalG,
    double? sodiumGoalMg,
  }) async {
    savedCalories = fixedKcalGoal;
    savedFat = fixedFatGoalG;
    savedCholesterol = cholesterolGoalMg;
  }
}
