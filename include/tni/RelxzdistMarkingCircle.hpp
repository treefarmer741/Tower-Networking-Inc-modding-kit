#ifndef TNI_API_HEADER_RELXZDISTMARKINGCIRCLE
#define TNI_API_HEADER_RELXZDISTMARKINGCIRCLE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct RelxzdistMarkingCircle : public MeshInstance3D {
	using MeshInstance3D::MeshInstance3D;

	constexpr RelxzdistMarkingCircle(MeshInstance3D base) : MeshInstance3D{base} {}
	constexpr RelxzdistMarkingCircle(uint64_t addr) : MeshInstance3D{addr} {}
	constexpr RelxzdistMarkingCircle(Object obj) : RelxzdistMarkingCircle{obj.address()} {}
	RelxzdistMarkingCircle(Variant variant) : RelxzdistMarkingCircle{variant.as_object().address()} {}

	static constexpr double MARKER_MAX_THICKNESS = 0.005;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double RING_MIN_THINNESS = 0.001;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double POINT_HIDE_MARGIN = 0.3;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(default_line_width, double);
	PROPERTY(default_line_color, Variant);
	PROPERTY(default_line_material, BaseMaterial3D);
	PROPERTY(plane_color, Variant);
	PROPERTY(mesh_parent, Node3D);
	PROPERTY(plane0, MeshInstance3D);
	PROPERTY(plane_radius, double);

	inline void mark_x_axis(double line_width, Variant line_color);
	inline void mark_z_axis(double line_width, Variant line_color);
	inline void mark_2drel_line(Variant start, Variant end, BaseMaterial3D line_material_override, double width, Variant color);
	inline void mark_abs_line(Variant start, Variant end, BaseMaterial3D line_material_override, double width, Variant color);
	inline void clear();
	inline void update_marked_point(int64_t point_id, Variant real_origin, Variant real_point, double real_maxdist);
	inline Node3D mark_point(int64_t point_id, Variant real_origin, Variant real_point, double real_maxdist, Node3D point_node_override, double point_radius, Variant point_color);
	inline MeshInstance3D mark_ring(double ring_floatpos, BaseMaterial3D ring_material_override, double ring_width, Variant ring_color);
	inline void play_ringwave_animation(double wave_period, bool wave_fading, BaseMaterial3D ring_material_override, Variant ringf_method_cb, double ring_width, Variant ring_color);
};


inline void RelxzdistMarkingCircle::mark_x_axis(double line_width, Variant line_color) { voidcall("mark_x_axis", line_width, line_color); }
inline void RelxzdistMarkingCircle::mark_z_axis(double line_width, Variant line_color) { voidcall("mark_z_axis", line_width, line_color); }
inline void RelxzdistMarkingCircle::mark_2drel_line(Variant start, Variant end, BaseMaterial3D line_material_override, double width, Variant color) { voidcall("mark_2drel_line", start, end, line_material_override, width, color); }
inline void RelxzdistMarkingCircle::mark_abs_line(Variant start, Variant end, BaseMaterial3D line_material_override, double width, Variant color) { voidcall("mark_abs_line", start, end, line_material_override, width, color); }
inline void RelxzdistMarkingCircle::clear() { voidcall("clear"); }
inline void RelxzdistMarkingCircle::update_marked_point(int64_t point_id, Variant real_origin, Variant real_point, double real_maxdist) { voidcall("update_marked_point", point_id, real_origin, real_point, real_maxdist); }
inline Node3D RelxzdistMarkingCircle::mark_point(int64_t point_id, Variant real_origin, Variant real_point, double real_maxdist, Node3D point_node_override, double point_radius, Variant point_color) { return Node3D(operator()("mark_point", point_id, real_origin, real_point, real_maxdist, point_node_override, point_radius, point_color).as_object().address()); }
inline MeshInstance3D RelxzdistMarkingCircle::mark_ring(double ring_floatpos, BaseMaterial3D ring_material_override, double ring_width, Variant ring_color) { return MeshInstance3D(operator()("mark_ring", ring_floatpos, ring_material_override, ring_width, ring_color).as_object().address()); }
inline void RelxzdistMarkingCircle::play_ringwave_animation(double wave_period, bool wave_fading, BaseMaterial3D ring_material_override, Variant ringf_method_cb, double ring_width, Variant ring_color) { voidcall("play_ringwave_animation", wave_period, wave_fading, ring_material_override, ringf_method_cb, ring_width, ring_color); }

#endif
