import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure ContactRegion where
  contactSet : Prop
  normalDirection : Prop
  frictionModel : Prop

def ContactRegionClosed (C : ContactRegion) : Prop :=
  C.contactSet ∧ C.normalDirection ∧ C.frictionModel

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse