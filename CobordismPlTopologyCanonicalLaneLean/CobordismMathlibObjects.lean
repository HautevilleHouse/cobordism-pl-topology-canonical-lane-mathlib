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
  source : CobordismSpace
  target : CobordismSpace
  cobordism : Type
  cobordismTopology : TopologicalSpace cobordism
  plStructure : Prop
  boundaryCompatible : Prop
  conclusion : boundaryCompatible

structure CobordismEndgameState where
  object : CobordismAdmittedObject

def CobordismWitnessClosed (O : CobordismAdmittedObject) : Prop :=
  O.boundaryCompatible

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse