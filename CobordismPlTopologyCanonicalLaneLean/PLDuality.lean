import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure PLDualityPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  plStructure : Prop
  cohomologyDuality : Prop
  poincareDuality : Prop
  signatureInvariant : Prop

structure PLDualityEvidence (D : PLDualityPackage) where
  plStructureClosed : D.plStructure
  cohomologyDualityClosed : D.cohomologyDuality
  poincareDualityClosed : D.poincareDuality
  signatureInvariantClosed : D.signatureInvariant

def PLDualityClosed (D : PLDualityPackage) : Prop :=
  D.plStructure ∧ D.cohomologyDuality ∧ D.poincareDuality ∧ D.signatureInvariant

theorem pl_duality_closed_from_evidence (D : PLDualityPackage) (E : PLDualityEvidence D) :
    PLDualityClosed D := by
  exact And.intro E.plStructureClosed
    (And.intro E.cohomologyDualityClosed
      (And.intro E.poincareDualityClosed E.signatureInvariantClosed))

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse
