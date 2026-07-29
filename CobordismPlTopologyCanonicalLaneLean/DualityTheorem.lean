import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure DualityPackage where
  poincareDualityPL : Prop
  intersectionForm : Prop
  signatureTheorem : Prop
  characteristicClasses : Prop
  thomIsomorphism : Prop

structure DualityEvidence (D : DualityPackage) where
  poincareDualityPLClosed : D.poincareDualityPL
  intersectionFormClosed : D.intersectionForm
  signatureTheoremClosed : D.signatureTheorem
  characteristicClassesClosed : D.characteristicClasses
  thomIsomorphismClosed : D.thomIsomorphism

def DualityClosed (D : DualityPackage) : Prop :=
  D.poincareDualityPL ∧ D.intersectionForm ∧ D.signatureTheorem ∧ D.characteristicClasses ∧ D.thomIsomorphism

theorem duality_closed_from_evidence (D : DualityPackage) (E : DualityEvidence D) :
    DualityClosed D := by
  exact And.intro E.poincareDualityPLClosed
    (And.intro E.intersectionFormClosed
      (And.intro E.signatureTheoremClosed
        (And.intro E.characteristicClassesClosed E.thomIsomorphismClosed)))

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse