import canonicalLaneMathlib.AdmissibleClass
import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.CollisionModel

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure ContactPoint where
  position : ℝ × ℝ × ℝ
  normal : ℝ × ℝ × ℝ
  penetrationDepth : ℝ

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

structure CollisionResponse where
  impulse : ℝ × ℝ × ℝ
  torqueImpulse : ℝ × ℝ × ℝ
  postCollisionVelocities : (ℝ × ℝ × ℝ) × (ℝ × ℝ × ℝ)

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

class DynamicsEngine where
  detectCollisions : List RigidBody → List (RigidBody × RigidBody × ContactPoint)
  resolveCollision : RigidBody → RigidBody → ContactPoint → CollisionModel → CollisionResponse
  integrate : List RigidBody → ℝ → List RigidBody

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse