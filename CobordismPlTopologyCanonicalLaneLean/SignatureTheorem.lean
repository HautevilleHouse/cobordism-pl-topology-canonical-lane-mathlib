import CobordismPlTopologyCanonicalLaneLean.PontryaginThomConstruction

/-!
# Signature Theorem Package
-/

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure SignatureTheoremPackage {C : CobordismClassificationPackage}
    {P : PontryaginThomConstructionPackage C} where
  signatureDefined : Prop
  signatureCobordismInvariant : Prop
  signatureMultiplicativity : Prop
  hirzebruchSignatureFormula : Prop

structure SignatureTheoremEvidence {C : CobordismClassificationPackage}
    {P : PontryaginThomConstructionPackage C} (S : SignatureTheoremPackage C P) where
  signatureDefinedClosed : S.signatureDefined
  signatureCobordismInvariantClosed : S.signatureCobordismInvariant
  signatureMultiplicativityClosed : S.signatureMultiplicativity
  hirzebruchSignatureFormulaClosed : S.hirzebruchSignatureFormula

def SignatureTheoremClosed {C : CobordismClassificationPackage}
    {P : PontryaginThomConstructionPackage C} (S : SignatureTheoremPackage C P) : Prop :=
  S.signatureDefined ∧ S.signatureCobordismInvariant ∧
  S.signatureMultiplicativity ∧ S.hirzebruchSignatureFormula

theorem signature_theorem_closed_from_evidence
    {C : CobordismClassificationPackage} {P : PontryaginThomConstructionPackage C}
    (S : SignatureTheoremPackage C P) (E : SignatureTheoremEvidence S) :
    SignatureTheoremClosed S := by
  exact And.intro E.signatureDefinedClosed
    (And.intro E.signatureCobordismInvariantClosed
      (And.intro E.signatureMultiplicativityClosed E.hirzebruchSignatureFormulaClosed))

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse
