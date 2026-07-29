import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure LandSurfaceProcessesPackage where
  erosionSedimentation : Prop
  soilFormation : Prop
  vegetationDynamics : Prop
  landUseChange : Prop

structure LandSurfaceProcessesEvidence (L : LandSurfaceProcessesPackage) where
  erosionSedimentationClosed : L.erosionSedimentation
  soilFormationClosed : L.soilFormation
  vegetationDynamicsClosed : L.vegetationDynamics
  landUseChangeClosed : L.landUseChange

def LandSurfaceProcessesClosed (L : LandSurfaceProcessesPackage) : Prop :=
  L.erosionSedimentation ∧ L.soilFormation ∧ L.vegetationDynamics ∧ L.landUseChange

theorem land_surface_processes_closed_from_evidence (L : LandSurfaceProcessesPackage) (E : LandSurfaceProcessesEvidence L) : LandSurfaceProcessesClosed L :=
  And.intro E.erosionSedimentationClosed (And.intro E.soilFormationClosed (And.intro E.vegetationDynamicsClosed E.landUseChangeClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse