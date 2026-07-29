import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.RigidBodyCollision

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure SimulationCouplingPackage where
  timeStepping : Type
  constraintSolver : Type
  couplingInterface : Type
  energyConservation : Prop
  momentumConservation : Prop
  symplecticIntegrator : Prop

structure SimulationCouplingEvidence (S : SimulationCouplingPackage) where
  energyConservationClosed : S.energyConservation
  momentumConservationClosed : S.momentumConservation
  symplecticIntegratorClosed : S.symplecticIntegrator

def SimulationCouplingClosed (S : SimulationCouplingPackage) : Prop :=
  S.energyConservation ∧ S.momentumConservation ∧ S.symplecticIntegrator

theorem simulation_coupling_closed_from_evidence (S : SimulationCouplingPackage)
    (E : SimulationCouplingEvidence S) : SimulationCouplingClosed S := by
  exact And.intro E.energyConservationClosed
    (And.intro E.momentumConservationClosed E.symplecticIntegratorClosed)

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse
