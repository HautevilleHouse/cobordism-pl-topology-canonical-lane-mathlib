import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure CobordismAdmittedObject where
  sourceManifold : Type u
  sourceTopology : TopologicalSpace sourceManifold
  targetManifold : Type v
  targetTopology : TopologicalSpace targetManifold
  cobordismManifold : Type w
  cobordismTopology : TopologicalSpace cobordismManifold
  boundaryComponents : Prop
  cobordismIsPL : Prop
  cobordismClassData : Prop
  conclusion : cobordismClassData

structure AdmissibleClass where
  object : CobordismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse