import canonicalLaneMathlib.AdmissibleClass

/-!
# Earth System Modeling Package

This module defines the admissible-class bridge for Earth Science Environmental Geology.
It frames the key Earth System Modeling components as explicit proof obligations,
following the HantevilleHouse style guide and the closure naming convention.
-/

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure EarthSystemModelPackage where
  earthSystemModel : Prop
  climateForcing : Prop
  feedbackMechanisms : Prop
  timescales : Prop

structure EarthSystemModelEvidence (E : EarthSystemModelPackage) where
  earthSystemModelClosed : E.earthSystemModel
  climateForcingClosed : E.climateForcing
  feedbackMechanismsClosed : E.feedbackMechanisms
  timescalesClosed : E.timescales

def EarthSystemModelClosed (E : EarthSystemModelPackage) : Prop :=
  E.earthSystemModel ∧ E.climateForcing ∧ E.feedbackMechanisms ∧ E.timescales

theorem earth_system_model_closed_from_evidence (E : EarthSystemModelPackage)
    (Ev : EarthSystemModelEvidence E) : EarthSystemModelClosed E := by
  exact And.intro Ev.earthSystemModelClosed
    (And.intro Ev.climateForcingClosed
      (And.intro Ev.feedbackMechanismsClosed Ev.timescalesClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse