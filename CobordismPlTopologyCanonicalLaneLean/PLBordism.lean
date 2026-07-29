import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure PLBordismPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  sourcePLStructure : Prop
  targetPLStructure : Prop
  plCobordismRelation : Prop
  cobordismClassGroup : Type w
  additionLaw : Prop
  zeroClass : cobordismClassGroup
  inverseLaw : Prop

structure PLBordismEvidence (B : PLBordismPackage) where
  sourcePLStructureClosed : B.sourcePLStructure
  targetPLStructureClosed : B.targetPLStructure
  plCobordismRelationClosed : B.plCobordismRelation
  additionLawClosed : B.additionLaw
  inverseLawClosed : B.inverseLaw

def PLBordismClosed (B : PLBordismPackage) : Prop :=
  B.sourcePLStructure ∧ B.targetPLStructure ∧ B.plCobordismRelation ∧
  B.additionLaw ∧ B.inverseLaw

theorem pl_bordism_closed_from_evidence (B : PLBordismPackage) (E : PLBordismEvidence B) :
    PLBordismClosed B := by
  exact And.intro E.sourcePLStructureClosed
    (And.intro E.targetPLStructureClosed
      (And.intro E.plCobordismRelationClosed
        (And.intro E.additionLawClosed E.inverseLawClosed)))

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse
