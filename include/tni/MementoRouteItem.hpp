#ifndef TNI_API_HEADER_MEMENTOROUTEITEM
#define TNI_API_HEADER_MEMENTOROUTEITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MementoRouteItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr MementoRouteItem(PanelContainer base) : PanelContainer{base} {}
	constexpr MementoRouteItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr MementoRouteItem(Object obj) : MementoRouteItem{obj.address()} {}
	MementoRouteItem(Variant variant) : MementoRouteItem{variant.as_object().address()} {}


	PROPERTY(devunit, DeviceUnit);

	inline void populate_routes(Variant route_entries, String default_route_port_id, bool broadcast_forwarding);
	inline void refresh();
};

#include "DeviceUnit.hpp"

inline void MementoRouteItem::populate_routes(Variant route_entries, String default_route_port_id, bool broadcast_forwarding) { this->voidcall("populate_routes", route_entries, default_route_port_id, broadcast_forwarding); }
inline void MementoRouteItem::refresh() { this->voidcall("refresh"); }

#endif
