import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanics

structure UniversalityClassPackage where
  symmetryClass : String
  dimensionality : ℕ
  criticalExponentsUnique : Prop
  renormalizationGroupFixedPoint : Prop

structure UniversalityClassEvidence (U : UniversalityClassPackage) where
  criticalExponentsUniqueClosed : U.criticalExponentsUnique
  renormalizationGroupFixedPointClosed : U.renormalizationGroupFixedPoint

def UniversalityClassClosed (U : UniversalityClassPackage) : Prop :=
  U.criticalExponentsUnique ∧ U.renormalizationGroupFixedPoint

theorem universality_class_closed_from_evidence (U : UniversalityClassPackage) (E : UniversalityClassEvidence U) : UniversalityClassClosed U := by
  exact And.intro E.criticalExponentsUniqueClosed E.renormalizationGroupFixedPointClosed

end DynamicCriticalPhenomenaStatisticalMechanics
end HautevilleHouse