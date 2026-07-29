import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure PLStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  plAtlas : Type v
  plCompatible : Prop
  triangulationExists : Prop
  handleDecomposition : Prop
  boundaryStructure : Prop

structure PLStructureEvidence (P : PLStructurePackage) where
  plAtlasClosed : P.plAtlas
  plCompatibleClosed : P.plCompatible
  triangulationExistsClosed : P.triangulationExists
  handleDecompositionClosed : P.handleDecomposition
  boundaryStructureClosed : P.boundaryStructure

def PLStructureClosed (P : PLStructurePackage) : Prop :=
  P.plAtlas ∧ P.plCompatible ∧ P.triangulationExists ∧ P.handleDecomposition ∧ P.boundaryStructure

theorem pl_structure_closed_from_evidence (P : PLStructurePackage) (E : PLStructureEvidence P) :
    PLStructureClosed P := by
  exact And.intro E.plAtlasClosed
    (And.intro E.plCompatibleClosed
      (And.intro E.triangulationExistsClosed
        (And.intro E.handleDecompositionClosed E.boundaryStructureClosed)))

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse