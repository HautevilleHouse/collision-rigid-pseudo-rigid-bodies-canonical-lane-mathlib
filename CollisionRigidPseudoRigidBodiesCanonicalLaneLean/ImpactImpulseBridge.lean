import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure ImpactImpulsePackage (C : RigidBodyCollisionPackage) (D : PseudoRigidDeformationPackage) where
  contactDuration : Prop
  impulseMagnitude : Prop
  forceDistribution : Prop

structure ImpactImpulseEvidence (C : RigidBodyCollisionPackage) (D : PseudoRigidDeformationPackage)
    (I : ImpactImpulsePackage C D) where
  contactDurationClosed : I.contactDuration
  impulseMagnitudeClosed : I.impulseMagnitude
  forceDistributionClosed : I.forceDistribution

def ImpactImpulseClosed (C : RigidBodyCollisionPackage) (D : PseudoRigidDeformationPackage)
    (I : ImpactImpulsePackage C D) : Prop :=
  I.contactDuration ∧ I.impulseMagnitude ∧ I.forceDistribution

theorem impact_impulse_closed_from_evidence (C : RigidBodyCollisionPackage)
    (D : PseudoRigidDeformationPackage) (I : ImpactImpulsePackage C D)
    (E : ImpactImpulseEvidence C D I) : ImpactImpulseClosed C D I := by
  exact And.intro E.contactDurationClosed (And.intro E.impulseMagnitudeClosed E.forceDistributionClosed)

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse