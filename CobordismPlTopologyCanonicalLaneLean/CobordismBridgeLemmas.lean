import CobordismPlTopologyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CobordismPlTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CobordismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CobordismPlTopologyCanonicalLaneLean
end HautevilleHouse