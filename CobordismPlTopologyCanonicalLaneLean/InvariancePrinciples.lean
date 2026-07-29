import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure InvariancePackage where
  hCobordismTheorem : Prop
  sCobordismTheorem : Prop
  homotopyInvariance : Prop
  topologicalInvariance : Prop
  plInvariance : Prop

structure InvarianceEvidence (I : InvariancePackage) where
  hCobordismTheoremClosed : I.hCobordismTheorem
  sCobordismTheoremClosed : I.sCobordismTheorem
  homotopyInvarianceClosed : I.homotopyInvariance
  topologicalInvarianceClosed : I.topologicalInvariance
  plInvarianceClosed : I.plInvariance

def InvarianceClosed (I : InvariancePackage) : Prop :=
  I.hCobordismTheorem ∧ I.sCobordismTheorem ∧ I.homotopyInvariance ∧ I.topologicalInvariance ∧ I.plInvariance

theorem invariance_closed_from_evidence (I : InvariancePackage) (E : InvarianceEvidence I) :
    InvarianceClosed I := by
  exact And.intro E.hCobordismTheoremClosed
    (And.intro E.sCobordismTheoremClosed
      (And.intro E.homotopyInvarianceClosed
        (And.intro E.topologicalInvarianceClosed E.plInvarianceClosed)))

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse