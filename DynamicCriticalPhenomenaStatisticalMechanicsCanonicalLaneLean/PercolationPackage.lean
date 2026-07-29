import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure PercolationPackage where
  percolationThreshold : Prop
  clusterDistribution : Prop
  correlationLength : Prop
  criticalExponents : Prop

structure PercolationEvidence (P : PercolationPackage) where
  percolationThresholdClosed : P.percolationThreshold
  clusterDistributionClosed : P.clusterDistribution
  correlationLengthClosed : P.correlationLength
  criticalExponentsClosed : P.criticalExponents

def PercolationClosed (P : PercolationPackage) : Prop :=
  P.percolationThreshold ∧ P.clusterDistribution ∧ P.correlationLength ∧ P.criticalExponents

theorem percolation_closed_from_evidence (P : PercolationPackage) (E : PercolationEvidence P) :
    PercolationClosed P := by
  exact And.intro E.percolationThresholdClosed
    (And.intro E.clusterDistributionClosed
      (And.intro E.correlationLengthClosed E.criticalExponentsClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse