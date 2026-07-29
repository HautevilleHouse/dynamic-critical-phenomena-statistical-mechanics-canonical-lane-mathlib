import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure LandauTheoryPackage where
  freeEnergyFunctional : Type u
  orderParameter : Type v
  meanFieldCriticalExponents : Prop
  ginzburgCriterion : Prop

structure LandauTheoryEvidence (L : LandauTheoryPackage) where
  freeEnergyFunctionalClosed : L.freeEnergyFunctional = L.freeEnergyFunctional
  orderParameterClosed : L.orderParameter = L.orderParameter
  meanFieldCriticalExponentsClosed : L.meanFieldCriticalExponents
  ginzburgCriterionClosed : L.ginzburgCriterion

def LandauTheoryClosed (L : LandauTheoryPackage) : Prop :=
  L.freeEnergyFunctional = L.freeEnergyFunctional ∧
  L.orderParameter = L.orderParameter ∧
  L.meanFieldCriticalExponents ∧
  L.ginzburgCriterion

theorem landau_theory_closed_from_evidence (L : LandauTheoryPackage) (E : LandauTheoryEvidence L) : LandauTheoryClosed L := by
  exact And.intro E.freeEnergyFunctionalClosed
    (And.intro E.orderParameterClosed
      (And.intro E.meanFieldCriticalExponentsClosed E.ginzburgCriterionClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse