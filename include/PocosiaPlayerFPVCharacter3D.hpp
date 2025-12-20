#ifndef TNI_API_HEADER_POCOSIAPLAYERFPVCHARACTER3D
#define TNI_API_HEADER_POCOSIAPLAYERFPVCHARACTER3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaPlayerFPVCharacter3D : public CharacterBody3D {
	using CharacterBody3D::CharacterBody3D;

	constexpr PocosiaPlayerFPVCharacter3D(CharacterBody3D base) : CharacterBody3D{base} {}
	constexpr PocosiaPlayerFPVCharacter3D(uint64_t addr) : CharacterBody3D{addr} {}
	constexpr PocosiaPlayerFPVCharacter3D(Object obj) : PocosiaPlayerFPVCharacter3D{obj.address()} {}
	PocosiaPlayerFPVCharacter3D(Variant variant) : PocosiaPlayerFPVCharacter3D{variant.as_object().address()} {}


	PROPERTY(max_speed, double);
	PROPERTY(acceleration, double);
	PROPERTY(deceleration, double);
	PROPERTY(jump_velocity, double);
	PROPERTY(gravity, Variant);
	PROPERTY(head, Camera3D);

};



#endif
