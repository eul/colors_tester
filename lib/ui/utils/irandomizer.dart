
/// Random numbers generator interface
///
abstract class IRandomizer {

  /// Should return random int value
  int getIntValue();
}

/// [IRandomizer] implementation based on List functionality
///
class ListBasedIntRandomizer implements IRandomizer {

  /// Max value for generated values
  final int maxValue;

  /// Storage to save possible values
  List<int> _valuesList = [];

  /// Constructor
  ListBasedIntRandomizer(this.maxValue){
    _valuesList = List<int>.generate(maxValue, (index) => index);
  }

  @override
  int getIntValue() {

    _valuesList.shuffle();

    return _valuesList.first;
  }
}

/// [IRandomizer] implementation based on Object hash functionality
///
class ObjectHashBasedIntRandomizer implements IRandomizer {

  /// Max value for generated values
  final int maxValue;

  /// Constructor
  ObjectHashBasedIntRandomizer(this.maxValue);

  @override
  int getIntValue() {

    final objectHash = Object().hashCode;

    int threeDigitsValue = int.parse(objectHash.toString()
        .substring(objectHash.toString().length - 3),
    );

    while (threeDigitsValue >= maxValue) {
      threeDigitsValue -= maxValue - 1;
    }

    return threeDigitsValue;
  }
}
