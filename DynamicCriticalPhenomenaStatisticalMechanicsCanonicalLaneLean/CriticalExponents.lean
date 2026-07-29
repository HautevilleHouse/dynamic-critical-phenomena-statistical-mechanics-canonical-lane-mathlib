import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanics

structure CriticalExponentsPackage where
  alpha : ℝ
  beta : ℝ
  gamma : ℝ
  delta : ℝ
  nu : ℝ
  eta : ℝ
  scalingRelationsSatisfied : Prop
  hyperscalingRelation : Prop

structure CriticalExponentsEvidence (C : CriticalExponentsPackage) where
  scalingRelationsSatisfiedClosed : C.scalingRelationsSatisfied
  hyperscalingRelationClosed : C.hyperscalingRelation

def CriticalExponentsClosed (C : CriticalExponentsPackage) : Prop :=
  C.scalingRelationsSatisfied ∧ C.hyperscalingRelation

theorem critical_exponents_closed_from_evidence (C : CriticalExponentsPackage) (E : CriticalExponentsEvidence C) : CriticalExponentsClosed C := by
  exact And.intro E.scalingRelationsSatisfiedClosed E.hyperscalingRelationClosed

end DynamicCriticalPhenomenaStatisticalMechanics
end HautevilleHouse