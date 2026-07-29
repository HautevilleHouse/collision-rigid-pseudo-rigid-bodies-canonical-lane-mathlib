import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure ImpactDynamics where
  preImpactState : Prop
  impactLaw : Prop
  postImpactState : Prop
  energyDissipation : Prop

def ImpactDynamicsClosed (I : ImpactDynamics) : Prop :=
  I.preImpactState ∧ I.impactLaw ∧ I.postImpactState ∧ I.energyDissipation

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse