#ifndef TNI_API_HEADER_RIGIDBOD3DPARTICLESPAWNER
#define TNI_API_HEADER_RIGIDBOD3DPARTICLESPAWNER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Rigidbod3dParticleSpawner : public Object {
	using Object::Object;

	constexpr Rigidbod3dParticleSpawner(Object base) : Object{base} {}
	constexpr Rigidbod3dParticleSpawner(uint64_t addr) : Object{addr} {}
	Rigidbod3dParticleSpawner(Variant variant) : Rigidbod3dParticleSpawner{variant.as_object().address()} {}



};



#endif
