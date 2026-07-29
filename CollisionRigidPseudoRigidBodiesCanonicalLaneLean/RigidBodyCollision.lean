import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.PseudoRigidDynamics

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure RigidBodyCollisionPackage where
  contactPoint : Type
  normalForce : Type
  frictionModel : Type
  impactEquation : Prop
  restitutionCoefficient : Prop
  collisionImpulse : Prop

structure RigidBodyCollisionEvidence (C : RigidBodyCollisionPackage) where
  impactEquationClosed : C.impactEquation
  restitutionCoefficientClosed : C.restitutionCoefficient
  collisionImpulseClosed : C.collisionImpulse

def RigidBodyCollisionClosed (C : RigidBodyCollisionPackage) : Prop :=
  C.impactEquation ∧ C.restitutionCoefficient ∧ C.collisionImpulse

theorem rigid_body_collision_closed_from_evidence (C : RigidBodyCollisionPackage)
    (E : RigidBodyCollisionEvidence C) : RigidBodyCollisionClosed C := by
  exact And.intro E.impactEquationClosed
    (And.intro E.restitutionCoefficientClosed E.collisionImpulseClosed)

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse
