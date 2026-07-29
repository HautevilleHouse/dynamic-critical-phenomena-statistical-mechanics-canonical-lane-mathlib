import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure KuboFluctuationData (A : AdmissibleClass) where
  fluctuationDissipationTheorem : Prop
  responseFunctionCompatibility : Prop
  dynamicSusceptibility : Prop

structure KuboFluctuationEvidence {A : AdmissibleClass} (K : KuboFluctuationData A) where
  fluctuationDissipationTheoremClosed : K.fluctuationDissipationTheorem
  responseFunctionCompatibilityClosed : K.responseFunctionCompatibility
  dynamicSusceptibilityClosed : K.dynamicSusceptibility

def KuboFluctuationClosed {A : AdmissibleClass} (K : KuboFluctuationData A) : Prop :=
  K.fluctuationDissipationTheorem ∧ K.responseFunctionCompatibility ∧ K.dynamicSusceptibility

theorem kubo_fluctuation_closed_from_evidence {A : AdmissibleClass} (K : KuboFluctuationData A) (E : KuboFluctuationEvidence K) : KuboFluctuationClosed K := by
  exact And.intro E.fluctuationDissipationTheoremClosed (And.intro E.responseFunctionCompatibilityClosed E.dynamicSusceptibilityClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse