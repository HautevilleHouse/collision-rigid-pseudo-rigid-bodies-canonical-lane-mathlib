import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure RigidBodyKinematics where
  position : Prop
  velocityProp : Prop
  angularVelocity : Prop
  inertiaTensor : Prop

def RigidBodyKinematicsClosed (K : RigidBodyKinematics) : Prop :=
  K.position ∧ K.velocityProp ∧ K.angularVelocity ∧ K.inertiaTensor

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse