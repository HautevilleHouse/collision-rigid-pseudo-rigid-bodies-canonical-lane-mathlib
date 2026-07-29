import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.AdmissibleClass
import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.BridgeLemmas
import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

def ConstrainedCollisionPseudoRigidClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_collision_pseudo_rigid_endgame (A : AdmissibleClass) :
    ConstrainedCollisionPseudoRigidClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse