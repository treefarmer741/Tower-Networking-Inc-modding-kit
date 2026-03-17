#ifndef TNI_API_HEADER_TOWERLINKITEMDISPLAY
#define TNI_API_HEADER_TOWERLINKITEMDISPLAY
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TowerLinkItemDisplay : public Container {
	using Container::Container;

	constexpr TowerLinkItemDisplay(Container base) : Container{base} {}
	constexpr TowerLinkItemDisplay(uint64_t addr) : Container{addr} {}
	constexpr TowerLinkItemDisplay(Object obj) : TowerLinkItemDisplay{obj.address()} {}
	TowerLinkItemDisplay(Variant variant) : TowerLinkItemDisplay{variant.as_object().address()} {}

	PROPERTY(bw_load_color, Variant);  // Const value type was not supported.

	PROPERTY(tower_link, TowerNetworkLink);
	PROPERTY(aplayer, AnimationPlayer);
	PROPERTY(idlbl, Label);
	PROPERTY(lnkstat, Label);
	PROPERTY(mpanel, Container);
	PROPERTY(m_btn, Button);
	PROPERTY(actdeac_btn, Button);
	PROPERTY(decom_btn, Button);
	PROPERTY(lbla, Label);
	PROPERTY(anlbl, Label);
	PROPERTY(lblb, Label);
	PROPERTY(costlbl, Label);
	PROPERTY(stcostlbl, Label);
	PROPERTY(lnktyplbl, Label);
	PROPERTY(bwlbl, RichTextLabel);
	PROPERTY(bw2lbl, RichTextLabel);
	PROPERTY(short_linkty, Label);
	PROPERTY(link_sz_sel, OptionButton);
	PROPERTY(link_new_bw, Label);
	PROPERTY(link_new_setup_cost, Label);
	PROPERTY(link_new_daily_cost, Label);
	PROPERTY(upgrade_btn, Button);
	PROPERTY(quote_ctn, Container);
	PROPERTY(keyword, String);

	inline void update_labels();
	inline String get_load_color(double ld_ratio);
};

#include "TowerNetworkLink.hpp"

inline void TowerLinkItemDisplay::update_labels() { voidcall("update_labels"); }
inline String TowerLinkItemDisplay::get_load_color(double ld_ratio) { return operator()("get_load_color", ld_ratio); }

#endif
