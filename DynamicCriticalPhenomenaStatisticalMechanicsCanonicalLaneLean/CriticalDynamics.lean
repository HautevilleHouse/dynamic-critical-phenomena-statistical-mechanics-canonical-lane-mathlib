import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure CriticalDynamicsPackage where
  dynamicCriticalExponentZ : ℝ
  responseFunctionScaling : Prop
  autocorrelationDecay : Prop
  fluctuationDissipationTheorem : Prop

structure CriticalDynamicsEvidence (D : CriticalDynamicsPackage) where
  dynamicCriticalExponentZClosed : D.dynamicCriticalExponentZ = D.dynamicCriticalExponentZ
  responseFunctionScalingClosed : D.responseFunctionScaling
  autocorrelationDecayClosed : D.autocorrelationDecay
  fluctuationDissipationTheoremClosed : D.fluctuationDissipationTheorem

def CriticalDynamicsClosed (D : CriticalDynamicsPackage) : Prop :=
  D.dynamicCriticalExponentZ = D.dynamicCriticalExponentZ ∧
  D.responseFunctionScaling ∧
  D.autocorrelationDecay ∧
  D.fluctuationDissipationTheorem

theorem critical_dynamics_closed_from_evidence (D : CriticalDynamicsPackage) (E : CriticalDynamicsEvidence D) : CriticalDynamicsClosed D := by
  exact And.intro E.dynamicCriticalExponentZClosed
    (And.intro E.responseFunctionScalingClosed
      (And.intro E.autocorrelationDecayClosed E.fluctuationDissipationTheoremClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse