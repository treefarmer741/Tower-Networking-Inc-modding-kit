#ifndef TNI_API_HEADER_DOMAINITEM
#define TNI_API_HEADER_DOMAINITEM
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DomainItem : public MarginContainer {
	using MarginContainer::MarginContainer;

	constexpr DomainItem(MarginContainer base) : MarginContainer{base} {}
	constexpr DomainItem(uint64_t addr) : MarginContainer{addr} {}
	constexpr DomainItem(Object obj) : DomainItem{obj.address()} {}
	DomainItem(Variant variant) : DomainItem{variant.as_object().address()} {}


	PROPERTY(payment_today, int64_t);
	PROPERTY(fqdn, String);
	PROPERTY(use_spec_csv, String);
	PROPERTY(ppu, double);
	PROPERTY(registration_cost, int64_t);
	PROPERTY(show_mod_buttons, bool);
	PROPERTY(show_visitors, bool);
	PROPERTY(show_reg_cost, bool);
	PROPERTY(today_visit_count, int64_t);
	PROPERTY(historical_visit_count, int64_t);
	PROPERTY(phref, PlayerHosting);

	inline void update_phdisp_with_phref();
	inline void update_use_d();
};

#include "PlayerHosting.hpp"

inline void DomainItem::update_phdisp_with_phref() { this->voidcall("update_phdisp_with_phref"); }
inline void DomainItem::update_use_d() { this->voidcall("update_use_d"); }

#endif
