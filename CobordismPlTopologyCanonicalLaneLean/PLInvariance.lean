import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure PLInvariancePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  plStructure : Prop
  homologyInvariant : Type v
  invarianceUnderPLBordism : Prop
  relationToHomology : Prop

structure PLInvarianceEvidence (I : PLInvariancePackage) where
  plStructureClosed : I.plStructure
  invarianceUnderPLBordismClosed : I.invarianceUnderPLBordism
  relationToHomologyClosed : I.relationToHomology

def PLInvarianceClosed (I : PLInvariancePackage) : Prop :=
  I.plStructure ∧ I.invarianceUnderPLBordism ∧ I.relationToHomology

theorem pl_invariance_closed_from_evidence (I : PLInvariancePackage) (E : PLInvarianceEvidence I) :
    PLInvarianceClosed I := by
  exact And.intro E.plStructureClosed
    (And.intro E.invarianceUnderPLBordismClosed E.relationToHomologyClosed)

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse
