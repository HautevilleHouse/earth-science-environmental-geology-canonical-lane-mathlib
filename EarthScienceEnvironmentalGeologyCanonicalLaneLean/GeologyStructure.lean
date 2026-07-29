import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure GeologicalFormation where
  carrier : Type u
  stratigraphy : Prop
  deformationHistory : Prop
  lithologyClassified : Prop

structure GeologicalFormationEvidence (G : GeologicalFormation) where
  stratigraphyClosed : G.stratigraphy
  deformationHistoryClosed : G.deformationHistory
  lithologyClassifiedClosed : G.lithologyClassified

def GeologicalFormationClosed (G : GeologicalFormation) : Prop :=
  G.stratigraphy ∧ G.deformationHistory ∧ G.lithologyClassified

theorem geological_formation_closed_from_evidence (G : GeologicalFormation) (E : GeologicalFormationEvidence G) : GeologicalFormationClosed G := by
  exact And.intro E.stratigraphyClosed (And.intro E.deformationHistoryClosed E.lithologyClassifiedClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse