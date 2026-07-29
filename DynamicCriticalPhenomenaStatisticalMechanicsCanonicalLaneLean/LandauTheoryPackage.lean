import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure LandauTheoryPackage where
  orderParameter : Type
  freeEnergyFunctional : Prop
  meanFieldExponents : Prop
  ginzburgCriterion : Prop

structure LandauTheoryEvidence (L : LandauTheoryPackage) where
  orderParameterClosed : L.orderParameter
  freeEnergyFunctionalClosed : L.freeEnergyFunctional
  meanFieldExponentsClosed : L.meanFieldExponents
  ginzburgCriterionClosed : L.ginzburgCriterion

def LandauTheoryClosed (L : LandauTheoryPackage) : Prop :=
  L.orderParameter ∧ L.freeEnergyFunctional ∧ L.meanFieldExponents ∧ L.ginzburgCriterion

theorem landau_theory_closed_from_evidence (L : LandauTheoryPackage) (E : LandauTheoryEvidence L) :
    LandauTheoryClosed L := by
  exact And.intro E.orderParameterClosed
    (And.intro E.freeEnergyFunctionalClosed
      (And.intro E.meanFieldExponentsClosed E.ginzburgCriterionClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse