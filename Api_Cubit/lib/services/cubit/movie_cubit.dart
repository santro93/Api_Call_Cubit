import 'package:bloc/bloc.dart';
import 'package:movie_app/model/sample_model.dart';
import 'package:movie_app/services/cubit/movie_state.dart';
import 'package:movie_app/services/rest_api/api_services.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(InitialState()) {
    displayData();
  }

  displayData() async {
    emit(InitialState());
    ApiServices repository = ApiServices();
    SampleModel movieList = await repository.getMovie();
    emit(LoadedState(movieList));
  }
}
