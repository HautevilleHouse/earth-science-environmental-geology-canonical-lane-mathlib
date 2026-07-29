import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure AtmosphericChemistryPackage where
  emissionInventory : Prop
  photochemicalMechanism : Prop
  transportDispersion : Prop
  depositionProcesses : Prop

structure AtmosphericChemistryEvidence (C : AtmosphericChemistryPackage) where
  emissionInventoryClosed : C.emissionInventory
  photochemicalMechanismClosed : C.photochemicalMechanism
  transportDispersionClosed : C.transportDispersion
  depositionProcessesClosed : C.depositionProcesses

def AtmosphericChemistryClosed (C : AtmosphericChemistryPackage) : Prop :=
  C.emissionInventory ∧ C.photochemicalMechanism ∧ C.transportDispersion ∧ C.depositionProcesses

theorem atmospheric_chemistry_closed_from_evidence (C : AtmosphericChemistryPackage) (E : AtmosphericChemistryEvidence C) : AtmosphericChemistryClosed C :=
  And.intro E.emissionInventoryClosed (And.intro E.photochemicalMechanismClosed (And.intro E.transportDispersionClosed E.depositionProcessesClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse