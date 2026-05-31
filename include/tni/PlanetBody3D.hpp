#ifndef TNI_API_HEADER_PLANETBODY3D
#define TNI_API_HEADER_PLANETBODY3D
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PlanetBody3D : public StaticBody3D {
	using StaticBody3D::StaticBody3D;

	constexpr PlanetBody3D(StaticBody3D base) : StaticBody3D{base} {}
	constexpr PlanetBody3D(uint64_t addr) : StaticBody3D{addr} {}
	constexpr PlanetBody3D(Object obj) : PlanetBody3D{obj.address()} {}
	PlanetBody3D(Variant variant) : PlanetBody3D{variant.as_object().address()} {}


	PROPERTY(rotation_speed, double);
	PROPERTY(orbit_target, PlanetBody3D);
	PROPERTY(orbit_period, double);
	PROPERTY(orbit_eccentricity, double);
	PROPERTY(orbit_axis, Variant);
	PROPERTY(lindragsph_np, NodePath);
	PROPERTY(gravsph_np, NodePath);
	PROPERTY(cshape_np, NodePath);
	PROPERTY(gravity_area, GravitySphereArea3D);
	PROPERTY(lindragsph, LinearDragSphereArea3D);
	PROPERTY(cshape, CollisionShape3D);

	inline double get_ground_radius();
	inline double get_safe_orbital_radius();
	inline double get_planet_gravity();
};

#include "PlanetBody3D.hpp"
#include "GravitySphereArea3D.hpp"
#include "LinearDragSphereArea3D.hpp"

inline double PlanetBody3D::get_ground_radius() { return this->operator()("get_ground_radius"); }
inline double PlanetBody3D::get_safe_orbital_radius() { return this->operator()("get_safe_orbital_radius"); }
inline double PlanetBody3D::get_planet_gravity() { return this->operator()("get_planet_gravity"); }

#endif
