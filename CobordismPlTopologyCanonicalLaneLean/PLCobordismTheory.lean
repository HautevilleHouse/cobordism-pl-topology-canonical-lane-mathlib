import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure PLCobordismTheory (n : ℕ) where
  triangulation : Type u
  piecewiseLinearStructure : Prop
  combinatorialInvariance : Prop
  relationToSmoothCobordism : Prop
  hCobordismTheorem : Prop

structure PLCobordismTheoryEvidence {n : ℕ} (P : PLCobordismTheory n) where
  triangulationClosed : P.triangulation
  piecewiseLinearStructureClosed : P.piecewiseLinearStructure
  hCobordismTheoremClosed : P.hCobordismTheorem

def PLCobordismTheoryClosed {n : ℕ} (P : PLCobordismTheory n) : Prop :=
  P.triangulation ∧ P.piecewiseLinearStructure ∧ P.hCobordismTheorem

theorem pl_cobordism_theory_closed_from_evidence
    {n : ℕ} (P : PLCobordismTheory n) (E : PLCobordismTheoryEvidence P) :
    PLCobordismTheoryClosed P := by
  exact And.intro E.triangulationClosed
    (And.intro E.piecewiseLinearStructureClosed E.hCobordismTheoremClosed)

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse