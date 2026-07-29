import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure RigidBodyCollisionPackage where
  mass : Type u
  velocity : Type v
  restitutionCoeff : Prop
  momentumConservation : Prop
  energyConservation : Prop

structure RigidBodyCollisionEvidence (C : RigidBodyCollisionPackage) where
  restitutionCoeffClosed : C.restitutionCoeff
  momentumConservationClosed : C.momentumConservation
  energyConservationClosed : C.energyConservation

def RigidBodyCollisionClosed (C : RigidBodyCollisionPackage) : Prop :=
  C.restitutionCoeff ∧ C.momentumConservation ∧ C.energyConservation

theorem rigid_body_collision_closed_from_evidence (C : RigidBodyCollisionPackage)
    (E : RigidBodyCollisionEvidence C) : RigidBodyCollisionClosed C := by
  exact And.intro E.restitutionCoeffClosed (And.intro E.momentumConservationClosed E.energyConservationClosed)

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse