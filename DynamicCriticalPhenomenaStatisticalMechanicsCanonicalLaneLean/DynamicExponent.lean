import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure DynamicExponentPackage where
  orderParameter : Type u
  dynamicScalingForm : Prop
  dynamicExponentZ : Prop
  agingRegime : Prop
  fluctuationDissipationViolation : Prop

structure DynamicExponentEvidence (D : DynamicExponentPackage) where
  dynamicScalingFormClosed : D.dynamicScalingForm
  dynamicExponentZClosed : D.dynamicExponentZ
  agingRegimeClosed : D.agingRegime
  fluctuationDissipationViolationClosed : D.fluctuationDissipationViolation

def DynamicExponentClosed (D : DynamicExponentPackage) : Prop :=
  D.dynamicScalingForm ∧ D.dynamicExponentZ ∧ D.agingRegime ∧ D.fluctuationDissipationViolation

theorem dynamic_exponent_closed_from_evidence (D : DynamicExponentPackage) (E : DynamicExponentEvidence D) :
    DynamicExponentClosed D := by
  exact And.intro E.dynamicScalingFormClosed (And.intro E.dynamicExponentZClosed (And.intro E.agingRegimeClosed E.fluctuationDissipationViolationClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse