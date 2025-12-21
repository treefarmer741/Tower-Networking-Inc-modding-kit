#ifndef TNI_API_HEADER_POCOSIAPLAYEROVERSEERCHARACTER3D
#define TNI_API_HEADER_POCOSIAPLAYEROVERSEERCHARACTER3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaPlayerOverseerCharacter3D : public CharacterBody3D {
	using CharacterBody3D::CharacterBody3D;

	constexpr PocosiaPlayerOverseerCharacter3D(CharacterBody3D base) : CharacterBody3D{base} {}
	constexpr PocosiaPlayerOverseerCharacter3D(uint64_t addr) : CharacterBody3D{addr} {}
	constexpr PocosiaPlayerOverseerCharacter3D(Object obj) : PocosiaPlayerOverseerCharacter3D{obj.address()} {}
	PocosiaPlayerOverseerCharacter3D(Variant variant) : PocosiaPlayerOverseerCharacter3D{variant.as_object().address()} {}


	PROPERTY(smooth_speed, double);
	PROPERTY(rot_control_key, int64_t);
	PROPERTY(rotation_speed, double);
	PROPERTY(max_tilt_from_horizontal, double);
	PROPERTY(wasd_control_enabled, bool);
	PROPERTY(vertical_control_enabled, bool);
	PROPERTY(rise_control_key, int64_t);
	PROPERTY(fall_control_key, int64_t);
	PROPERTY(translation_base_speed, double);
	PROPERTY(translation_accel_curve, Curve);
	PROPERTY(scroll_zoom_enabled, bool);
	PROPERTY(scroll_base_speed, double);
	PROPERTY(scroll_distance_ratio, double);
	PROPERTY(scroll_distance_min, double);
	PROPERTY(scroll_in_key, int64_t);
	PROPERTY(scroll_out_key, int64_t);
	PROPERTY(scroll_hit_mask, int64_t);
	PROPERTY(mouse_pan_enabled, bool);
	PROPERTY(pan_control_key, int64_t);
	PROPERTY(pan_speed_scaling, String);
	PROPERTY(pan_speed_factor, double);
	PROPERTY(camera_path, NodePath);
	PROPERTY(pan_ctl_enabled, bool);
	PROPERTY(rot_ctl_enabled, bool);

};



#endif
