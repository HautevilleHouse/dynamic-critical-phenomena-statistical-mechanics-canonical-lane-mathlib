import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure MonteCarloSimulationPackage where
  algorithmType : String
  latticeSize : ℕ
  temperatureRange : ℝ × ℝ
  measuredExponents : Prop

structure MonteCarloSimulationEvidence (M : MonteCarloSimulationPackage) where
  algorithmTypeClosed : M.algorithmType = M.algorithmType
  latticeSizeClosed : M.latticeSize = M.latticeSize
  temperatureRangeClosed : M.temperatureRange = M.temperatureRange
  measuredExponentsClosed : M.measuredExponents

def MonteCarloSimulationClosed (M : MonteCarloSimulationPackage) : Prop :=
  M.algorithmType = M.algorithmType ∧
  M.latticeSize = M.latticeSize ∧
  M.temperatureRange = M.temperatureRange ∧
  M.measuredExponents

theorem monte_carlo_simulation_closed_from_evidence (M : MonteCarloSimulationPackage) (E : MonteCarloSimulationEvidence M) : MonteCarloSimulationClosed M := by
  exact And.intro E.algorithmTypeClosed
    (And.intro E.latticeSizeClosed
      (And.intro E.temperatureRangeClosed E.measuredExponentsClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse