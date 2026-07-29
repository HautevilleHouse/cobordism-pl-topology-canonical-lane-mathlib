import CobordismPlTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def cobordismProjection : Projection CobordismEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem cobordism_projection_idempotent (x : CobordismEndgameState) :
    cobordismProjection.toFun (cobordismProjection.toFun x) = cobordismProjection.toFun x := by
  exact cobordismProjection.idempotent x

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse
