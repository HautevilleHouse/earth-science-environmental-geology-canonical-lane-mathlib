import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure GeochemicalCyclePackage where
  carbonCycleModel : Prop
  nitrogenCycleModel : Prop
  phosphorusCycleModel : Prop
  sulfurCycleModel : Prop
  rockWeathering : Prop
  anthropogenicInputs : Prop

structure GeochemicalCycleEvidence (G : GeochemicalCyclePackage) where
  carbonCycleModelClosed : G.carbonCycleModel
  nitrogenCycleModelClosed : G.nitrogenCycleModel
  phosphorusCycleModelClosed : G.phosphorusCycleModel
  sulfurCycleModelClosed : G.sulfurCycleModel
  rockWeatheringClosed : G.rockWeathering
  anthropogenicInputsClosed : G.anthropogenicInputs

def GeochemicalCycleClosed (G : GeochemicalCyclePackage) : Prop :=
  G.carbonCycleModel ∧ G.nitrogenCycleModel ∧ G.phosphorusCycleModel ∧
  G.sulfurCycleModel ∧ G.rockWeathering ∧ G.anthropogenicInputs

theorem geochemical_cycle_closed_from_evidence (G : GeochemicalCyclePackage) (E : GeochemicalCycleEvidence G) :
    GeochemicalCycleClosed G := by
  exact And.intro E.carbonCycleModelClosed
    (And.intro E.nitrogenCycleModelClosed
      (And.intro E.phosphorusCycleModelClosed
        (And.intro E.sulfurCycleModelClosed
          (And.intro E.rockWeatheringClosed E.anthropogenicInputsClosed))))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse