#ifndef TNI_API_HEADER_RIGIDBOD3DPARTICLESPAWNER
#define TNI_API_HEADER_RIGIDBOD3DPARTICLESPAWNER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Rigidbod3dParticleSpawner : public Node3D {
	using Node3D::Node3D;

	constexpr Rigidbod3dParticleSpawner(Node3D base) : Node3D{base} {}
	constexpr Rigidbod3dParticleSpawner(uint64_t addr) : Node3D{addr} {}
	constexpr Rigidbod3dParticleSpawner(Object obj) : Rigidbod3dParticleSpawner{obj.address()} {}
	Rigidbod3dParticleSpawner(Variant variant) : Rigidbod3dParticleSpawner{variant.as_object().address()} {}


	PROPERTY(rigbod3_particle_ps, PackedScene);
	PROPERTY(particle_period_s, double);
	PROPERTY(wind_speed, double);
	PROPERTY(plane_size, Variant);

};



#endif
