import 'package:bloc/bloc.dart';
import 'package:bloc_cubit/api/dataService.dart';
import 'package:bloc_cubit/app/appState.dart';
import 'package:bloc_cubit/model/dataModel.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataService data;
  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }
}
