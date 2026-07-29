import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

def ConstrainedDynamicCriticalPhenomenaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ A.gateWitness

theorem constrained_dynamic_critical_phenomena_endgame (A : AdmissibleClass) :
    ConstrainedDynamicCriticalPhenomenaClosure A := by
  exact And.intro (bridge_from_admissible_class A) A.gateWitness

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse