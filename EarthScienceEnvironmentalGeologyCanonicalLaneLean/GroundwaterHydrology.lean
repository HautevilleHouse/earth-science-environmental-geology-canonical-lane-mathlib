import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure GroundwaterHydrologyPackage where
  aquiferProperties : Prop
  darcyFlowModel : Prop
  contaminantTransport : Prop
  rechargeDischargeBalance : Prop

structure GroundwaterHydrologyEvidence (H : GroundwaterHydrologyPackage) where
  aquiferPropertiesClosed : H.aquiferProperties
  darcyFlowModelClosed : H.darcyFlowModel
  contaminantTransportClosed : H.contaminantTransport
  rechargeDischargeBalanceClosed : H.rechargeDischargeBalance

def GroundwaterHydrologyClosed (H : GroundwaterHydrologyPackage) : Prop :=
  H.aquiferProperties ∧ H.darcyFlowModel ∧ H.contaminantTransport ∧ H.rechargeDischargeBalance

theorem groundwater_hydrology_closed_from_evidence (H : GroundwaterHydrologyPackage) (E : GroundwaterHydrologyEvidence H) : GroundwaterHydrologyClosed H :=
  And.intro E.aquiferPropertiesClosed (And.intro E.darcyFlowModelClosed (And.intro E.contaminantTransportClosed E.rechargeDischargeBalanceClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse