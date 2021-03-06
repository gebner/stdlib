/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import algebra.category.Group.basic
import category_theory.limits.shapes.zero

/-!
# The category of commutative additive groups has a zero object and zero morphism.
-/

open category_theory
open category_theory.limits

universe u

namespace AddCommGroup

instance : has_zero_morphisms.{u} AddCommGroup.{u} :=
{ has_zero := λ X Y, ⟨0⟩ }

instance : has_zero_object.{u} AddCommGroup.{u} :=
{ zero := 0,
  unique_to := λ X, ⟨⟨0⟩, λ f, begin ext, cases x, erw add_monoid_hom.map_zero, refl end⟩,
  unique_from := λ X, ⟨⟨0⟩, λ f, begin ext, apply subsingleton.elim, end⟩, }

end AddCommGroup
