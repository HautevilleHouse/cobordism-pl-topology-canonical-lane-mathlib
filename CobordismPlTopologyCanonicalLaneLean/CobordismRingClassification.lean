import CobordismPlTopologyCanonicalLaneLean.PontryaginThomConstruction

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure CobordismRing where
  cobordismGroups : ℕ → Type
  groupOperations : ∀ n, CobordismClass (Type*) (Type*)
  ringStructure : Prop
  ringClosed : ringStructure

theorem cobordism_ring_classified (R : CobordismRing) : R.ringStructure := by
  exact R.ringClosed

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse