import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanics

structure FluctuationDissipationPackage where
  nearEquilibriumResponse : Prop
  correlationFunctionDecay : Prop
  transportCoefficient : Prop
  divergenceAtCriticality : Prop

structure FluctuationDissipationEvidence (F : FluctuationDissipationPackage) where
  nearEquilibriumResponseClosed : F.nearEquilibriumResponse
  correlationFunctionDecayClosed : F.correlationFunctionDecay
  transportCoefficientClosed : F.transportCoefficient
  divergenceAtCriticalityClosed : F.divergenceAtCriticality

def FluctuationDissipationClosed (F : FluctuationDissipationPackage) : Prop :=
  F.nearEquilibriumResponse ∧ F.correlationFunctionDecay ∧ F.transportCoefficient ∧ F.divergenceAtCriticality

theorem fluctuation_dissipation_closed_from_evidence (F : FluctuationDissipationPackage) (E : FluctuationDissipationEvidence F) : FluctuationDissipationClosed F := by
  exact And.intro E.nearEquilibriumResponseClosed (And.intro E.correlationFunctionDecayClosed (And.intro E.transportCoefficientClosed E.divergenceAtCriticalityClosed))

end DynamicCriticalPhenomenaStatisticalMechanics
end HautevilleHouse