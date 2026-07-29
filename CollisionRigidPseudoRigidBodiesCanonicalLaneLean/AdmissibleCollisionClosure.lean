import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollisionRigidPseudoRigidBodiesCanonicalLaneLean.CollisionRigidBodyModel
import HautevilleHouse.CollisionRigidPseudoRigidBodiesCanonicalLaneLean.CollisionResponse
import HautevilleHouse.CollisionRigidPseudoRigidBodiesCanonicalLaneLean.DeformationEnergy

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure AdmissibleCollisionClass where
  object : CollisionRigidBodyModel.RigidBody
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleCollisionClass) : Prop :=
  A.object.mass > 0

def gateClosed (A : AdmissibleCollisionClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleCollisionClass) : bridgeClosed A :=
  by
    have hm : A.object.mass > 0 := by
      exact A.object.massPositive
    exact hm

theorem gate_from_admissible_class (A : AdmissibleCollisionClass) : gateClosed A :=
  A.gateWitness

def ConstrainedCollisionClosure (A : AdmissibleCollisionClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_collision_endgame (A : AdmissibleCollisionClass) :
    ConstrainedCollisionClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse