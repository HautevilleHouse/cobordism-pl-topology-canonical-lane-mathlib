import canonicalLaneMathlib.AdmissibleClass
import CobordismPlTopologyCanonicalLaneLean.CobordismGroup
import CobordismPlTopologyCanonicalLaneLean.PontryaginThomConstruction

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure CobordismClassification (n : ℕ) where
  manifoldClass : Type u
  completeListOfInvariants : Prop
  isomorphismWithHomotopy : Prop
  geometricInterpretation : Prop
  dimensionFreeAnalysis : Prop

structure CobordismClassificationEvidence {n : ℕ} (C : CobordismClassification n) where
  completeListOfInvariantsClosed : C.completeListOfInvariants
  isomorphismWithHomotopyClosed : C.isomorphismWithHomotopy
  geometricInterpretationClosed : C.geometricInterpretation

def CobordismClassificationClosed {n : ℕ} (C : CobordismClassification n) : Prop :=
  C.completeListOfInvariants ∧ C.isomorphismWithHomotopy ∧ C.geometricInterpretation

theorem cobordism_classification_closed_from_evidence
    {n : ℕ} (C : CobordismClassification n) (E : CobordismClassificationEvidence C) :
    CobordismClassificationClosed C := by
  exact And.intro E.completeListOfInvariantsClosed
    (And.intro E.isomorphismWithHomotopyClosed E.geometricInterpretationClosed)

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse