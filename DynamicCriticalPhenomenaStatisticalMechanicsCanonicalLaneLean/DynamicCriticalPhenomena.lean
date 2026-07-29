import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure DynamicCriticalPhenomenaPackage where
  orderParameter : Type u
  thermalBath : Type v
  criticalTemperature : Prop
  dynamicExponent : Prop
  scalingFunction : Prop

structure DynamicCriticalPhenomenaEvidence (P : DynamicCriticalPhenomenaPackage) where
  criticalTemperatureClosed : P.criticalTemperature
  dynamicExponentClosed : P.dynamicExponent
  scalingFunctionClosed : P.scalingFunction

def DynamicCriticalPhenomenaClosed (P : DynamicCriticalPhenomenaPackage) : Prop :=
  P.criticalTemperature ∧ P.dynamicExponent ∧ P.scalingFunction

theorem dynamic_critical_phenomena_closed_from_evidence
    (P : DynamicCriticalPhenomenaPackage) (E : DynamicCriticalPhenomenaEvidence P) :
    DynamicCriticalPhenomenaClosed P := by
  exact And.intro E.criticalTemperatureClosed
    (And.intro E.dynamicExponentClosed E.scalingFunctionClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse