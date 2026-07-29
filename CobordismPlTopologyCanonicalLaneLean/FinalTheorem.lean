import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismPlTopologyCanonicalLaneLean.PLBordism
import HautevilleHouse.CobordismPlTopologyCanonicalLaneLean.PLInvariance
import HautevilleHouse.CobordismPlTopologyCanonicalLaneLean.PLDuality

/-! # Import bridge and gate lemmas -/

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PLBordismClosed (A.object : PLBordismPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  sorry  -- This will be properly defined with bridge lemmas

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedCobordismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_endgame (A : AdmissibleClass) : ConstrainedCobordismClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse
