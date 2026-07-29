import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

variable (A : AdmissibleClass)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CollisionSystemClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse