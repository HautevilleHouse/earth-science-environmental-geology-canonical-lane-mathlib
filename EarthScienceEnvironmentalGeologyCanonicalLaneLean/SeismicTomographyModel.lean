import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure SeismicTomographyModel where
  pWaveVelocity : Type u
  sWaveVelocity : Type v
  densityModel : Type w
  teleseismicData : Prop
  localEarthquakeData : Prop
  inversionConverged : Prop

structure SeismicTomographyEvidence (S : SeismicTomographyModel) where
  teleseismicDataClosed : S.teleseismicData
  localEarthquakeDataClosed : S.localEarthquakeData
  inversionConvergedClosed : S.inversionConverged

def SeismicTomographyClosed (S : SeismicTomographyModel) : Prop :=
  S.teleseismicData ∧ S.localEarthquakeData ∧ S.inversionConverged

theorem seismic_tomography_closed_from_evidence (S : SeismicTomographyModel)
    (E : SeismicTomographyEvidence S) : SeismicTomographyClosed S := by
  exact And.intro E.teleseismicDataClosed
    (And.intro E.localEarthquakeDataClosed E.inversionConvergedClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse