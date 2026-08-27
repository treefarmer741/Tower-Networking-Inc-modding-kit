#ifndef TNI_API_HEADER_MODDATA
#define TNI_API_HEADER_MODDATA
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModData : public RefCounted {
	using RefCounted::RefCounted;

	constexpr ModData(RefCounted base) : RefCounted{base} {}
	constexpr ModData(uint64_t addr) : RefCounted{addr} {}
	constexpr ModData(Object obj) : ModData{obj.address()} {}
	ModData(Variant variant) : ModData{variant.as_object().address()} {}


	PROPERTY(mod, Mod);

	inline void load_data();
	inline void merchant_spawned(const Merchant& merchant);
};

#include "Mod.hpp"
#include "Merchant.hpp"

inline void ModData::load_data() { this->voidcall("load_data"); }
inline void ModData::merchant_spawned(const Merchant& merchant) { this->voidcall("merchant_spawned", Object(reinterpret_cast<const Object*>(&merchant)->address())); }

#endif
