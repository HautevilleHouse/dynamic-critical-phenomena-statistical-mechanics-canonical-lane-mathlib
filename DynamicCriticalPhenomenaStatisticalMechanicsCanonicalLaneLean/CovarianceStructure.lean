import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure CovarianceData (A : AdmissibleClass) where
  pairCorrelationFunction : Prop
  distanceScalingExponent : Prop
  freezeThawCoherence : Prop

structure CovarianceEvidence {A : AdmissibleClass} (C : CovarianceData A) where
  pairCorrelationFunctionClosed : C.pairCorrelationFunction
  distanceScalingExponentClosed : C.distanceScalingExponent
  freezeThawCoherenceClosed : C.freezeThawCoherence

def CovarianceClosed {A : AdmissibleClass} (C : CovarianceData A) : Prop :=
  C.pairCorrelationFunction ∧ C.distanceScalingExponent ∧ C.freezeThawCoherence

theorem covariance_closed_from_evidence {A : AdmissibleClass} (C : CovarianceData A) (E : CovarianceEvidence C) : CovarianceClosed C := by
  exact And.intro E.pairCorrelationFunctionClosed (And.intro E.distanceScalingExponentClosed E.freezeThawCoherenceClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse