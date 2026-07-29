import CobordismPlTopologyCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CobordismSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CobordismAdmittedObject where
  space : CobordismSpace
  orientedClosedManifold : Prop
  dimensionBound : Prop
  cobordismClass : Type
  cobordismEquivalence : Prop
  conclusion : cobordismEquivalence

structure CobordismEndgameState where
  object : CobordismAdmittedObject

def CobordismWitnessClosed (O : CobordismAdmittedObject) : Prop :=
  O.cobordismEquivalence

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse
