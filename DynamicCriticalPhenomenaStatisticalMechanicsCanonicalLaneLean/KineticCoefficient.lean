import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure KineticCoefficientPackage where
  transportCoefficient : Type u
  mobility : Type v
  modeCoupling : Prop
  timeCorrelationFunction : Prop
  StokesEinsteinRelation : Prop

structure KineticCoefficientEvidence (K : KineticCoefficientPackage) where
  modeCouplingClosed : K.modeCoupling
  timeCorrelationFunctionClosed : K.timeCorrelationFunction
  StokesEinsteinRelationClosed : K.StokesEinsteinRelation

def KineticCoefficientClosed (K : KineticCoefficientPackage) : Prop :=
  K.modeCoupling ∧ K.timeCorrelationFunction ∧ K.StokesEinsteinRelation

theorem kinetic_coefficient_closed_from_evidence (K : KineticCoefficientPackage) (E : KineticCoefficientEvidence K) :
    KineticCoefficientClosed K := by
  exact And.intro E.modeCouplingClosed (And.intro E.timeCorrelationFunctionClosed E.StokesEinsteinRelationClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse