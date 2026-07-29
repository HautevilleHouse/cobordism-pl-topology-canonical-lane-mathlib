import canonicalLaneMathlib.AdmissibleClass
import CobordismPlTopologyCanonicalLaneLean.CobordismGroup

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure PontryaginThomConstruction (n : ℕ) where
  embeddingClass : Type u
  framedManifold : Type v
  homotopyGroupStable : Type w
  isomorphism : Prop
  naturalityUnderSuspension : Prop
  relationToCobordismGroup : Prop

structure PontryaginThomEvidence {n : ℕ} (P : PontryaginThomConstruction n) where
  isomorphismClosed : P.isomorphism
  naturalityUnderSuspensionClosed : P.naturalityUnderSuspension
  relationToCobordismGroupClosed : P.relationToCobordismGroup

def PontryaginThomClosed {n : ℕ} (P : PontryaginThomConstruction n) : Prop :=
  P.isomorphism ∧ P.naturalityUnderSuspension ∧ P.relationToCobordismGroup

theorem pontryagin_thom_closed_from_evidence
    {n : ℕ} (P : PontryaginThomConstruction n) (E : PontryaginThomEvidence P) :
    PontryaginThomClosed P := by
  exact And.intro E.isomorphismClosed
    (And.intro E.naturalityUnderSuspensionClosed E.relationToCobordismGroupClosed)

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse