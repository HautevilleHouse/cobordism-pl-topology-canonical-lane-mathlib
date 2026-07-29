import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure CobordismInvariance (n : ℕ) where
  manifoldInvariant : Type u
  invariantUnderCobordism : Prop
  additiveUnderDisjointUnion : Prop
  trivialOnBoundingManifold : Prop
  relationToCharacteristicClass : Prop

structure CobordismInvarianceEvidence {n : ℕ} (I : CobordismInvariance n) where
  invariantUnderCobordismClosed : I.invariantUnderCobordism
  additiveUnderDisjointUnionClosed : I.additiveUnderDisjointUnion
  trivialOnBoundingManifoldClosed : I.trivialOnBoundingManifold

def CobordismInvarianceClosed {n : ℕ} (I : CobordismInvariance n) : Prop :=
  I.invariantUnderCobordism ∧ I.additiveUnderDisjointUnion ∧ I.trivialOnBoundingManifold

theorem cobordism_invariance_closed_from_evidence
    {n : ℕ} (I : CobordismInvariance n) (E : CobordismInvarianceEvidence I) :
    CobordismInvarianceClosed I := by
  exact And.intro E.invariantUnderCobordismClosed
    (And.intro E.additiveUnderDisjointUnionClosed E.trivialOnBoundingManifoldClosed)

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse