/// Random numbers generator interface
///
abstract class IRandomizer {

  /// Should return random int value
  int getIntValue();
}

/// [IRandomizer] implementation for positive int values
///
class PositiveIntRandomizer implements IRandomizer {

  /// Max value for generated values
  final int maxValue;

  /// Storage to save possible values
  late final List<int> _valuesList;

  /// Constructor
  PositiveIntRandomizer(this.maxValue){
    _valuesList = List<int>.generate(maxValue, (index) => index);
  }

  @override
  int getIntValue() {

    _valuesList.shuffle();

    return _valuesList.first;
  }
}