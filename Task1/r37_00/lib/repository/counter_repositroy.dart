import 'package:r37_00/entity/counter.dart';

abstract class CounterRepositroy {
  void addCounter(Counter counter);
  void removeCounter(Counter counter);
}
