import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure LangevinEquationPackage where
  noiseTerm : Type u
  driftTerm : Type v
  langevinEquation : Prop
  fluctuationDissipationRelation : Prop
  stationaryDistribution : Prop

structure LangevinEquationEvidence (L : LangevinEquationPackage) where
  langevinEquationClosed : L.langevinEquation
  fluctuationDissipationRelationClosed : L.fluctuationDissipationRelation
  stationaryDistributionClosed : L.stationaryDistribution

def LangevinEquationClosed (L : LangevinEquationPackage) : Prop :=
  L.langevinEquation ∧ L.fluctuationDissipationRelation ∧ L.stationaryDistribution

theorem langevin_equation_closed_from_evidence (L : LangevinEquationPackage) (E : LangevinEquationEvidence L) :
    LangevinEquationClosed L := by
  exact And.intro E.langevinEquationClosed (And.intro E.fluctuationDissipationRelationClosed E.stationaryDistributionClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse