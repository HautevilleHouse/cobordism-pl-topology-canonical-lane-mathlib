import canonicalLaneMathlib.AdmissibleClass
import CobordismPlTopologyCanonicalLaneLean.CobordismClass

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure CobordismAdmittedObject where
  source : Type
  sourceTopology : TopologicalSpace source
  target : Type
  targetTopology : TopologicalSpace target
  cobordism : CobordismClass source target
  classificationTheorem : Prop
  conclusion : classificationTheorem

structure AdmissibleClass where
  object : CobordismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.classificationTheorem) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse