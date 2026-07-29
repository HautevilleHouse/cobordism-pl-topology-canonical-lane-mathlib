import CobordismPlTopologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

structure AdmissibleClass where
  object : CobordismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CobordismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse
