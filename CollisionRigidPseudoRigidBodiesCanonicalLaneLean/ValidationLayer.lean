import canonicalLaneMathlib.AdmissibleClass
import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.CollisionModel

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure ValidationReport where
  energyConservation : Prop
  momentumConservation : Prop
  penetrationDepthNonNegative : Prop
  coefficientBounds : Prop
  energyConservationTerm : energyConservation
  momentumConservationTerm : momentumConservation
  penetrationDepthNonNegativeTerm : penetrationDepthNonNegative
  coefficientBoundsTerm : coefficientBounds

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

structure ValidationLayer where
  validate : CollisionModel → DynamicsEngine → ValidationReport

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse