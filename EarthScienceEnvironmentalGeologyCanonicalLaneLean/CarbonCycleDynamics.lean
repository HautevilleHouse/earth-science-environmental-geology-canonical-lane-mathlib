import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure CarbonCycleDynamicsPackage where
  atmosphericCO2 : Prop
  oceanCarbonUptake : Prop
  terrestrialBiosphereFlux : Prop
  fossilFuelEmissions : Prop

structure CarbonCycleDynamicsEvidence (C : CarbonCycleDynamicsPackage) where
  atmosphericCO2Closed : C.atmosphericCO2
  oceanCarbonUptakeClosed : C.oceanCarbonUptake
  terrestrialBiosphereFluxClosed : C.terrestrialBiosphereFlux
  fossilFuelEmissionsClosed : C.fossilFuelEmissions

def CarbonCycleDynamicsClosed (C : CarbonCycleDynamicsPackage) : Prop :=
  C.atmosphericCO2 ∧ C.oceanCarbonUptake ∧ C.terrestrialBiosphereFlux ∧ C.fossilFuelEmissions

theorem carbon_cycle_dynamics_closed_from_evidence (C : CarbonCycleDynamicsPackage) (Ev : CarbonCycleDynamicsEvidence C) : CarbonCycleDynamicsClosed C := by
  exact And.intro Ev.atmosphericCO2Closed (And.intro Ev.oceanCarbonUptakeClosed (And.intro Ev.terrestrialBiosphereFluxClosed Ev.fossilFuelEmissionsClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse
