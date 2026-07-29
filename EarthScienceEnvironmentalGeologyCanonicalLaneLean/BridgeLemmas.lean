import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EarthWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse
