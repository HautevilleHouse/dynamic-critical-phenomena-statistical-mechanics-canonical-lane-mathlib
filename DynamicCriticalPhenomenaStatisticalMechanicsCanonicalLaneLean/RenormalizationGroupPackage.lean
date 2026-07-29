import canonicalLaneMathlib.AdmissibleClass
import .ScalingLawPackage

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure RenormalizationGroupPackage {S : ScalingLawPackage} (scale) where
  rgTransformation : Type
  fixedPoints : Prop
  flowEquations : Prop
  universalityDerivation : S.universalityHypothesis

structure RenormalizationGroupEvidence {S : ScalingLawPackage} (scale) (R : RenormalizationGroupPackage S scale) where
  rgTransformationClosed : R.rgTransformation
  fixedPointsClosed : R.fixedPoints
  flowEquationsClosed : R.flowEquations

def RenormalizationGroupClosed {S : ScalingLawPackage} (scale) (R : RenormalizationGroupPackage S scale) : Prop :=
  R.rgTransformation ∧ R.fixedPoints ∧ R.flowEquations

theorem renormalization_group_closed_from_evidence {S : ScalingLawPackage} (scale) (R : RenormalizationGroupPackage S scale) (E : RenormalizationGroupEvidence scale R) :
    RenormalizationGroupClosed scale R := by
  exact And.intro E.rgTransformationClosed (And.intro E.fixedPointsClosed E.flowEquationsClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse