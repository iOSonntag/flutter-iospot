


class ArchitectPlans {

  static ArchitectPlans fallback()
  {
    return ArchitectPlans();
  }














  @override
  bool operator ==(Object other)
  {
    if (other.runtimeType != runtimeType)
    {
      return false;
    }
    return other is ArchitectPlans && false;
  }

  @override
  int get hashCode
  {
    final List<Object?> values = <Object?>[
    ];

    return Object.hashAll(values);
  }

}