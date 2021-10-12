Future<void> main() async {
  FlutterApp flutterApp = FlutterApp();
  CotlinApp cotlinApp = CotlinApp();

  List<Lengueage> lenguages = [];

  lenguages.add(flutterApp);
  lenguages.add(cotlinApp);

  for (var item in lenguages) {
    item.build();
    item.execute();
  }

  FreelanceProgrammer freelanceProgrammer = FreelanceProgrammer();
  CorporateProgrammer corporateProgrammer = CorporateProgrammer();

  List<Programmer> programmers = [];

  programmers.add(freelanceProgrammer);
  programmers.add(corporateProgrammer);

  for (var people in programmers) {
    people.earnMoney();
  }
}

class Lengueage {
  void build() {}

  void execute() {}
}

class FlutterApp extends Lengueage {
  void build() {
    print('Use Flutter IDE');
  }

  void execute() {
    print('Run code');
  }
}

class CotlinApp extends Lengueage {
  void build() {
    print('Use Cotlin programming language');
  }

  void execute() {
    print('Run Cotlin code');
  }
}

abstract class Programmer {
  void earnMoney() {}
}

class FreelanceProgrammer extends Programmer {
  void earnMoney() {
    print('Freelancer receive payment for the completed order');
  }
}

class CorporateProgrammer extends Programmer {
  void earnMoney() {
    print('the programmer receives a salary at the end of the month');
  }
}
