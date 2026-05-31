#ifndef TNI_API_HEADER_CHARACTERCREATOR
#define TNI_API_HEADER_CHARACTERCREATOR
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CharacterCreator : public Node3D {
	using Node3D::Node3D;

	constexpr CharacterCreator(Node3D base) : Node3D{base} {}
	constexpr CharacterCreator(uint64_t addr) : Node3D{addr} {}
	constexpr CharacterCreator(Object obj) : CharacterCreator{obj.address()} {}
	CharacterCreator(Variant variant) : CharacterCreator{variant.as_object().address()} {}


	PROPERTY(rotating, Variant);
	PROPERTY(body_material, Variant);
	PROPERTY(hair_meshes, Variant);
	PROPERTY(hair_material, Variant);
	PROPERTY(face_material, Variant);
	PROPERTY(eye_material, Variant);
	PROPERTY(eye_textures, Variant);
	PROPERTY(top_meshes, Variant);
	PROPERTY(necklace_mesh, Variant);
	PROPERTY(top_materials, Variant);
	PROPERTY(bottom_meshes, Variant);
	PROPERTY(shoes_meshes, Variant);
	PROPERTY(accessories_meshes, Variant);

};



#endif
