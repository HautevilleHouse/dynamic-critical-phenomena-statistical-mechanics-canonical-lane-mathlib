import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean

structure RenormalizationGroupPackage where
  scaleTransformation : Type u
  fixedPoint : Type v
  criticalExponents : Prop
  scalingRelations : Prop
  universalityClass : Prop

structure RenormalizationGroupEvidence (R : RenormalizationGroupPackage) where
  criticalExponentsClosed : R.criticalExponents
  scalingRelationsClosed : R.scalingRelations
  universalityClassClosed : R.universalityClass

def RenormalizationGroupClosed (R : RenormalizationGroupPackage) : Prop :=
  R.criticalExponents ∧ R.scalingRelations ∧ R.universalityClass

theorem renormalization_group_closed_from_evidence (R : RenormalizationGroupPackage) (E : RenormalizationGroupEvidence R) :
    RenormalizationGroupClosed R := by
  exact And.intro E.criticalExponentsClosed (And.intro E.scalingRelationsClosed E.universalityClassClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse