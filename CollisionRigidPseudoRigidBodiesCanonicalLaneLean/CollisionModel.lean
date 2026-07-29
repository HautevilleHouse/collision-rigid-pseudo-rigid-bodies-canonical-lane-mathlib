import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure RigidBody where
  mass : ℝ
  position : ℝ × ℝ × ℝ
  velocity : ℝ × ℝ × ℝ
  shape : String -- "sphere", "ellipsoid", etc.
  deformable : Bool

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

structure PseudoRigidBody extends RigidBody where
  complianceMatrix : ℝ × ℝ × ℝ × ℝ × ℝ × ℝ
  internalDissipation : ℝ

defaultCoe : ℝ := 0

structure CollisionModel where
  restitutionCoefficient : ℝ
  frictionCoefficient : ℝ
  contactStiffness : ℝ
  dampingFactor : ℝ

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

defaultCoe : ℝ := 0

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse