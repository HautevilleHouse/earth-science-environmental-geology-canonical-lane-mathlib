import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure RadiogenicIsotopeSystem where
  parentIsotope : Type u
  daughterIsotope : Type v
  decayConstant : Type w
  initialRatio : Prop
  isoChronDefined : Prop
  closureTemperature : Prop

structure RadiogenicIsotopeEvidence (R : RadiogenicIsotopeSystem) where
  initialRatioClosed : R.initialRatio
  isoChronDefinedClosed : R.isoChronDefined
  closureTemperatureClosed : R.closureTemperature

def RadiogenicIsotopeClosed (R : RadiogenicIsotopeSystem) : Prop :=
  R.initialRatio ∧ R.isoChronDefined ∧ R.closureTemperature

theorem radiogenic_isotope_closed_from_evidence (R : RadiogenicIsotopeSystem)
    (E : RadiogenicIsotopeEvidence R) : RadiogenicIsotopeClosed R := by
  exact And.intro E.initialRatioClosed
    (And.intro E.isoChronDefinedClosed E.closureTemperatureClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse