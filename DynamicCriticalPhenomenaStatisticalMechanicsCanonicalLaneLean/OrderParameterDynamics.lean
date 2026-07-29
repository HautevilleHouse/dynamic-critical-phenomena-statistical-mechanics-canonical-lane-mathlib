import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure OrderParameterDynamicsData (A : AdmissibleClass) where
  relaxationTimeDivergence : Prop
  dynamicScalingRelation : Prop
  autocorrelationDecay : Prop

structure OrderParameterDynamicsEvidence {A : AdmissibleClass} (O : OrderParameterDynamicsData A) where
  relaxationTimeDivergenceClosed : O.relaxationTimeDivergence
  dynamicScalingRelationClosed : O.dynamicScalingRelation
  autocorrelationDecayClosed : O.autocorrelationDecay

def OrderParameterDynamicsClosed {A : AdmissibleClass} (O : OrderParameterDynamicsData A) : Prop :=
  O.relaxationTimeDivergence ∧ O.dynamicScalingRelation ∧ O.autocorrelationDecay

theorem order_parameter_dynamics_closed_from_evidence {A : AdmissibleClass} (O : OrderParameterDynamicsData A) (E : OrderParameterDynamicsEvidence O) : OrderParameterDynamicsClosed O := by
  exact And.intro E.relaxationTimeDivergenceClosed (And.intro E.dynamicScalingRelationClosed E.autocorrelationDecayClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse