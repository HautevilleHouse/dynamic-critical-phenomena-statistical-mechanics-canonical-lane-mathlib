import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure ScalingTheoryData (A : AdmissibleClass) where
  finiteSizeScaling : Prop
  selfSimilarity : Prop
  universalityClass : Prop

structure ScalingTheoryEvidence {A : AdmissibleClass} (S : ScalingTheoryData A) where
  finiteSizeScalingClosed : S.finiteSizeScaling
  selfSimilarityClosed : S.selfSimilarity
  universalityClassClosed : S.universalityClass

def ScalingTheoryClosed {A : AdmissibleClass} (S : ScalingTheoryData A) : Prop :=
  S.finiteSizeScaling ∧ S.selfSimilarity ∧ S.universalityClass

theorem scaling_theory_closed_from_evidence {A : AdmissibleClass} (S : ScalingTheoryData A) (E : ScalingTheoryEvidence S) : ScalingTheoryClosed S := by
  exact And.intro E.finiteSizeScalingClosed (And.intro E.selfSimilarityClosed E.universalityClassClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse