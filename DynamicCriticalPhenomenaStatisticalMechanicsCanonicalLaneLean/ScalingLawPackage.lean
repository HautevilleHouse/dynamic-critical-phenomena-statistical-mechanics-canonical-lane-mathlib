import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure ScalingLawPackage where
  criticalExponents : Type
  scalingRelations : Prop
  universalityHypothesis : Prop
  exponentDerivation : Prop

structure ScalingLawEvidence (S : ScalingLawPackage) where
  criticalExponentsClosed : S.criticalExponents
  scalingRelationsClosed : S.scalingRelations
  universalityHypothesisClosed : S.universalityHypothesis
  exponentDerivationClosed : S.exponentDerivation

def ScalingLawClosed (S : ScalingLawPackage) : Prop :=
  S.criticalExponents ∧ S.scalingRelations ∧ S.universalityHypothesis ∧ S.exponentDerivation

theorem scaling_law_closed_from_evidence (S : ScalingLawPackage) (E : ScalingLawEvidence S) :
    ScalingLawClosed S := by
  exact And.intro E.criticalExponentsClosed
    (And.intro E.scalingRelationsClosed
      (And.intro E.universalityHypothesisClosed E.exponentDerivationClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse