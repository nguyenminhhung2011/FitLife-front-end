enum PlanType {
  user("USER"),
  ai("AI"),
  def("DEFAULT"),
  ;

  final String name;
  const PlanType(this.name);
}

extension PlanTypeExtension on PlanType {}
