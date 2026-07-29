import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure CollisionResponsePackage where
  preCollisionState : Type u
  postCollisionState : Type v
  impulseModel : Type w
  momentumConservation : Prop
  impulseResponse : Prop
  momentumConservationClosed : momentumConservation
  impulseResponseClosed : impulseResponse

structure CollisionResponseEvidence (R : CollisionResponsePackage) where
  momentumConservationClosed : R.momentumConservation
  impulseResponseClosed : R.impulseResponse

def CollisionResponseClosed (R : CollisionResponsePackage) : Prop :=
  R.momentumConservation ∧ R.impulseResponse

theorem collision_response_closed_from_evidence
    (R : CollisionResponsePackage) (E : CollisionResponseEvidence R) :
    CollisionResponseClosed R := by
  exact And.intro E.momentumConservationClosed E.impulseResponseClosed

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse