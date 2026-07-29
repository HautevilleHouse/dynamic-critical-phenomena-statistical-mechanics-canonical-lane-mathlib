import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse