import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure GeochemicalCyclesPackage where
  rockWeathering : Prop
  nutrientCycles : Prop
  isotopeFractionation : Prop
  anthropogenicDisturbance : Prop

structure GeochemicalCyclesEvidence (G : GeochemicalCyclesPackage) where
  rockWeatheringClosed : G.rockWeathering
  nutrientCyclesClosed : G.nutrientCycles
  isotopeFractionationClosed : G.isotopeFractionation
  anthropogenicDisturbanceClosed : G.anthropogenicDisturbance

def GeochemicalCyclesClosed (G : GeochemicalCyclesPackage) : Prop :=
  G.rockWeathering ∧ G.nutrientCycles ∧ G.isotopeFractionation ∧ G.anthropogenicDisturbance

theorem geochemical_cycles_closed_from_evidence (G : GeochemicalCyclesPackage) (E : GeochemicalCyclesEvidence G) : GeochemicalCyclesClosed G :=
  And.intro E.rockWeatheringClosed (And.intro E.nutrientCyclesClosed (And.intro E.isotopeFractionationClosed E.anthropogenicDisturbanceClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse