#ifndef TNI_API_HEADER_SEGMENTEDSUPPORTBUILDER
#define TNI_API_HEADER_SEGMENTEDSUPPORTBUILDER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SegmentedSupportBuilder : public Area3D {
	using Area3D::Area3D;

	constexpr SegmentedSupportBuilder(Area3D base) : Area3D{base} {}
	constexpr SegmentedSupportBuilder(uint64_t addr) : Area3D{addr} {}
	constexpr SegmentedSupportBuilder(Object obj) : SegmentedSupportBuilder{obj.address()} {}
	SegmentedSupportBuilder(Variant variant) : SegmentedSupportBuilder{variant.as_object().address()} {}

	enum default_build_mode : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		STRAIGHT_BOX = 0,
		SAGGING_BOXES = 1,
	};

	PROPERTY(point_a, Node3D);
	PROPERTY(point_b, Node3D);
	PROPERTY(support_ps, PackedScene);
	PROPERTY(segment_ps, PackedScene);
	PROPERTY(segment_length, double);
	PROPERTY(max_support_height_ratio, double);
	PROPERTY(min_support_margin, double);
	PROPERTY(min_segment_length, double);
	PROPERTY(horizontal_bend_deviation, double);
	PROPERTY(vertical_up_bend_deviation, double);
	PROPERTY(vertical_down_bend_deviation, double);
	PROPERTY(ground_reference, Node3D);
	PROPERTY(ground_direction, Variant);
	PROPERTY(ground_mask, int64_t);
	PROPERTY(segment_area_cross_section, Variant);
	PROPERTY(segment_area_end_margin, double);
	PROPERTY(obstacle_mask, int64_t);
	PROPERTY(obstacle_ignore_rid, Variant);
	PROPERTY(singular_raycast, bool);
	PROPERTY(warn_raycast_hits, bool);
	PROPERTY(default_segment_mode, int64_t);
	PROPERTY(default_segment_box_crossarea, Variant);
	PROPERTY(default_segment_sag_count, int64_t);
	PROPERTY(default_segment_sag_ratio, double);
	PROPERTY(max_support_height, double);
	PROPERTY(is_building, bool);

	inline void build();
	inline void stop_build();
};


inline void SegmentedSupportBuilder::build() { this->voidcall("build"); }
inline void SegmentedSupportBuilder::stop_build() { this->voidcall("stop_build"); }

#endif
