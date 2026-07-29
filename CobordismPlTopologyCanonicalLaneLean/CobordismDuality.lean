import canonicalLaneMathlib.AdmissibleClass
import CobordismPlTopologyCanonicalLaneLean.CobordismGroup

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure CobordismDuality (n : ℕ) where
  poincareDuality : Prop
  intersectionForm : Type u
  signatureTheorem : Prop
  relationToLGenus : Prop
  topologicalInvariance : Prop

structure CobordismDualityEvidence {n : ℕ} (D : CobordismDuality n) where
  poincareDualityClosed : D.poincareDuality
  signatureTheoremClosed : D.signatureTheorem
  topologicalInvarianceClosed : D.topologicalInvariance

def CobordismDualityClosed {n : ℕ} (D : CobordismDuality n) : Prop :=
  D.poincareDuality ∧ D.signatureTheorem ∧ D.topologicalInvariance

theorem cobordism_duality_closed_from_evidence
    {n : ℕ} (D : CobordismDuality n) (E : CobordismDualityEvidence D) :
    CobordismDualityClosed D := by
  exact And.intro E.poincareDualityClosed
    (And.intro E.signatureTheoremClosed E.topologicalInvarianceClosed)

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse