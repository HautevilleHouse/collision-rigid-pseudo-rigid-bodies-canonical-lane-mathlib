import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RigidBodySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RigidBodyAdmittedObject where
  space : RigidBodySpace
  closedThreeManifold : Prop
  rigidBodyDynamics : Prop
  pseudoRigidApproximation : Type
  pseudoRigidTopology : TopologicalSpace pseudoRigidApproximation
  collisionResolved : Prop
  conclusion : collisionResolved

structure RigidBodyEndgameState where
  object : RigidBodyAdmittedObject

def RigidBodyWitnessClosed (O : RigidBodyAdmittedObject) : Prop :=
  O.collisionResolved

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse
