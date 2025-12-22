#ifndef TNI_API_HEADER_SIMPLETERRAIN
#define TNI_API_HEADER_SIMPLETERRAIN
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SimpleTerrain : public Node3D {
	using Node3D::Node3D;

	constexpr SimpleTerrain(Node3D base) : Node3D{base} {}
	constexpr SimpleTerrain(uint64_t addr) : Node3D{addr} {}
	constexpr SimpleTerrain(Object obj) : SimpleTerrain{obj.address()} {}
	SimpleTerrain(Variant variant) : SimpleTerrain{variant.as_object().address()} {}


	PROPERTY(width, int64_t);
	PROPERTY(depth, int64_t);
	PROPERTY(height_scale, int64_t);
	PROPERTY(max_height, int64_t);
	PROPERTY(noise_seed, int64_t);
	PROPERTY(noise_frequency, double);
	PROPERTY(noise_octaves, int64_t);
	PROPERTY(noise_type, int64_t);
	PROPERTY(terrain_material, StandardMaterial3D);
	PROPERTY(generate_collision, bool);
	PROPERTY(collision_layers, int64_t);
	PROPERTY(collision_mask, int64_t);
	PROPERTY(mesh_instance, MeshInstance3D);
	PROPERTY(static_body, StaticBody3D);
	PROPERTY(collision_shape, CollisionShape3D);
	PROPERTY(generated_terrain_hash, int64_t);

	inline Variant get_terrain_hash();
	inline void generate_terrain();
	inline double get_height_at_position(double world_x, double world_z);
};


inline Variant SimpleTerrain::get_terrain_hash() { return operator()("get_terrain_hash"); }
inline void SimpleTerrain::generate_terrain() { voidcall("generate_terrain"); }
inline double SimpleTerrain::get_height_at_position(double world_x, double world_z) { return operator()("get_height_at_position", world_x, world_z); }

#endif
