import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure CorrelationFunctionPackage where
  twoPointFunction : Type u
  dynamicCorrelationLength : Prop
  scalingLimit : Prop
  violationOfFluctuationDissipationTheorem : Prop

structure CorrelationFunctionEvidence (C : CorrelationFunctionPackage) where
  twoPointFunctionClosed : C.twoPointFunction
  dynamicCorrelationLengthClosed : C.dynamicCorrelationLength
  scalingLimitClosed : C.scalingLimit
  violationOfFluctuationDissipationTheoremClosed : C.violationOfFluctuationDissipationTheorem

def CorrelationFunctionClosed (C : CorrelationFunctionPackage) : Prop :=
  C.twoPointFunction ∧ C.dynamicCorrelationLength ∧ C.scalingLimit ∧ C.violationOfFluctuationDissipationTheorem

theorem correlation_function_closed_from_evidence (C : CorrelationFunctionPackage) (E : CorrelationFunctionEvidence C) :
    CorrelationFunctionClosed C := by
  exact And.intro E.twoPointFunctionClosed (And.intro E.dynamicCorrelationLengthClosed (And.intro E.scalingLimitClosed E.violationOfFluctuationDissipationTheoremClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse