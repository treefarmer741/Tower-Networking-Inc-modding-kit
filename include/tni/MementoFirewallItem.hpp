#ifndef TNI_API_HEADER_MEMENTOFIREWALLITEM
#define TNI_API_HEADER_MEMENTOFIREWALLITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MementoFirewallItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr MementoFirewallItem(PanelContainer base) : PanelContainer{base} {}
	constexpr MementoFirewallItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr MementoFirewallItem(Object obj) : MementoFirewallItem{obj.address()} {}
	MementoFirewallItem(Variant variant) : MementoFirewallItem{variant.as_object().address()} {}


	PROPERTY(devunit, DeviceUnit);

	inline void populate_rules(Variant rules);
	inline void refresh();
};

#include "DeviceUnit.hpp"

inline void MementoFirewallItem::populate_rules(Variant rules) { this->voidcall("populate_rules", rules); }
inline void MementoFirewallItem::refresh() { this->voidcall("refresh"); }

#endif
