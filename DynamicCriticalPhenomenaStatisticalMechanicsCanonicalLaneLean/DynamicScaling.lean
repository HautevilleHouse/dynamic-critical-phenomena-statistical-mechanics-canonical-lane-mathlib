import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanics

structure DynamicScalingPackage where
  dynamicalExponentZ : ℝ
  agingScaling : Prop
  fluctuationDissipation : Prop
  dynamicCorrelationFunctionScaling : Prop

structure DynamicScalingEvidence (D : DynamicScalingPackage) where
  dynamicalExponentZClosed : D.dynamicalExponentZ > 0
  agingScalingClosed : D.agingScaling
  fluctuationDissipationClosed : D.fluctuationDissipation
  dynamicCorrelationFunctionScalingClosed : D.dynamicCorrelationFunctionScaling

def DynamicScalingClosed (D : DynamicScalingPackage) : Prop :=
  D.dynamicalExponentZ > 0 ∧ D.agingScaling ∧ D.fluctuationDissipation ∧ D.dynamicCorrelationFunctionScaling

theorem dynamic_scaling_closed_from_evidence (D : DynamicScalingPackage) (E : DynamicScalingEvidence D) : DynamicScalingClosed D := by
  exact And.intro E.dynamicalExponentZClosed (And.intro E.agingScalingClosed (And.intro E.fluctuationDissipationClosed E.dynamicCorrelationFunctionScalingClosed))

end DynamicCriticalPhenomenaStatisticalMechanics
end HautevilleHouse