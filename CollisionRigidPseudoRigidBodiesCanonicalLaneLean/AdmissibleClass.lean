import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure AdmissibleClass where
  object : RigidBodyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RigidBodyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse
