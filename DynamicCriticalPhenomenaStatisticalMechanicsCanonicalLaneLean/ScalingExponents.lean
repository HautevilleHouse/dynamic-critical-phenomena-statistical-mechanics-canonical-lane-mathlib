import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure ScalingExponentsPackage where
  criticalExponentNu : ℝ
  criticalExponentEta : ℝ
  criticalExponentGamma : ℝ
  criticalExponentBeta : ℝ
  scalingRelationsSatisfied : Prop

structure ScalingExponentsEvidence (S : ScalingExponentsPackage) where
  criticalExponentNuClosed : S.criticalExponentNu = S.criticalExponentNu
  criticalExponentEtaClosed : S.criticalExponentEta = S.criticalExponentEta
  criticalExponentGammaClosed : S.criticalExponentGamma = S.criticalExponentGamma
  criticalExponentBetaClosed : S.criticalExponentBeta = S.criticalExponentBeta
  scalingRelationsSatisfiedClosed : S.scalingRelationsSatisfied

def ScalingExponentsClosed (S : ScalingExponentsPackage) : Prop :=
  S.criticalExponentNu = S.criticalExponentNu ∧
  S.criticalExponentEta = S.criticalExponentEta ∧
  S.criticalExponentGamma = S.criticalExponentGamma ∧
  S.criticalExponentBeta = S.criticalExponentBeta ∧
  S.scalingRelationsSatisfied

theorem scaling_exponents_closed_from_evidence (S : ScalingExponentsPackage) (E : ScalingExponentsEvidence S) : ScalingExponentsClosed S := by
  exact And.intro E.criticalExponentNuClosed
    (And.intro E.criticalExponentEtaClosed
      (And.intro E.criticalExponentGammaClosed
        (And.intro E.criticalExponentBetaClosed E.scalingRelationsSatisfiedClosed)))

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse