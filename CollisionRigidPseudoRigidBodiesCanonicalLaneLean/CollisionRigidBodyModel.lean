import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure RigidBody where
  mass : ℝ
  inertia : Mat₃ ℝ
  position : ℝ³
  orientation : SO₃
  linearVelocity : ℝ³
  angularVelocity : ℝ³

def inertialForce (m : ℝ) (a : ℝ³) : ℝ³ := m • a

def torque (I : Mat₃ ℝ) (α : ℝ³) : ℝ³ := I • α

structure PseudoRigidBody where
  reducedMass : ℝ
  effectiveInertia : Mat₃ ℝ
  deformationModel : ℝ → Mat₃ ℝ  -- time-dependent deformation
  strainEnergy : ℝ³ → ℝ

structure ContactPoint where
  position : ℝ³
  penetration : ℝ
  relativeVelocity : ℝ³

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse