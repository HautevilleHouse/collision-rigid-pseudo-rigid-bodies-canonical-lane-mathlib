import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure CollisionSystem where
  object : Type u
  velocity : Type v
  mass : Type w
  admissibleRegion : Prop
  collisionLaw : Prop
  pseudoRigidModel : Prop

def CollisionSystemClosed (C : CollisionSystem) : Prop :=
  C.admissibleRegion ∧ C.collisionLaw ∧ C.pseudoRigidModel

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse