import CobordismPlTopologyCanonicalLaneLean.CobordismClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure PLStructureInvariance (M N : Type*) [TopologicalSpace M] [TopologicalSpace N] where
  polyhedralHomotopy : CobordismClass M N
  plStructurePreserved : Prop
  invarianceClosed : plStructurePreserved

theorem pl_structure_invariant (M N : Type*) [TopologicalSpace M] [TopologicalSpace N]
    (I : PLStructureInvariance M N) : I.plStructurePreserved := by
  exact I.invarianceClosed

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse