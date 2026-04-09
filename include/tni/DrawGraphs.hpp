#ifndef TNI_API_HEADER_DRAWGRAPHS
#define TNI_API_HEADER_DRAWGRAPHS
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DrawGraphs : public Line2D {
	using Line2D::Line2D;

	constexpr DrawGraphs(Line2D base) : Line2D{base} {}
	constexpr DrawGraphs(uint64_t addr) : Line2D{addr} {}
	constexpr DrawGraphs(Object obj) : DrawGraphs{obj.address()} {}
	DrawGraphs(Variant variant) : DrawGraphs{variant.as_object().address()} {}


	PROPERTY(graph_width, double);
	PROPERTY(graph_height, double);
	PROPERTY(graph_max_points, int64_t);
	PROPERTY(grow, bool);
	PROPERTY(graph, Variant);

	inline void create_graph();
	inline void pop_values();
	inline void add_value(double value);
};


inline void DrawGraphs::create_graph() { this->voidcall("create_graph"); }
inline void DrawGraphs::pop_values() { this->voidcall("pop_values"); }
inline void DrawGraphs::add_value(double value) { this->voidcall("add_value", value); }

#endif
