import 'package:r37_00/entity/counter.dart';
import 'package:r37_00/repository/counter_repositroy.dart';

class DataSource extends CounterRepositroy {
  static List<Counter> counters = [];

  @override
  void addCounter(Counter counter) => counters.add(counter);

  @override
  void removeCounter(Counter counter) => counters.remove(counter);
}
