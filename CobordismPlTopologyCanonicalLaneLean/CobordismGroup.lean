import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure CobordismGroupPackage where
  dimension : ℕ
  cobordismGroup : Type u
  groupStructure : Type v
  abelian : Prop
  pontrjaginThomIsomorphism : Prop
  classificationTable : Prop

structure CobordismGroupEvidence (C : CobordismGroupPackage) where
  groupStructureClosed : C.groupStructure
  abelianClosed : C.abelian
  pontrjaginThomIsomorphismClosed : C.pontrjaginThomIsomorphism
  classificationTableClosed : C.classificationTable

def CobordismGroupClosed (C : CobordismGroupPackage) : Prop :=
  C.groupStructure ∧ C.abelian ∧ C.pontrjaginThomIsomorphism ∧ C.classificationTable

theorem cobordism_group_closed_from_evidence (C : CobordismGroupPackage) (E : CobordismGroupEvidence C) :
    CobordismGroupClosed C := by
  exact And.intro E.groupStructureClosed
    (And.intro E.abelianClosed
      (And.intro E.pontrjaginThomIsomorphismClosed E.classificationTableClosed))

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse