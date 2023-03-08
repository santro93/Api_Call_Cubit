import 'package:movie_app/model/sample_model.dart';
import 'package:equatable/equatable.dart';

abstract class MoviesState extends Equatable {}

class InitialState extends MoviesState {
  @override
  List<Country> get props => [];
}

class LoadedState extends MoviesState {
  LoadedState(this.sampleModel);
  SampleModel sampleModel;

  @override
  List<SampleModel> get props => [sampleModel];
}
