#ifndef TNI_API_HEADER_S3TRAYLINKS
#define TNI_API_HEADER_S3TRAYLINKS
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S3TrayLinks : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S3TrayLinks(RefCounted base) : RefCounted{base} {}
	constexpr S3TrayLinks(uint64_t addr) : RefCounted{addr} {}
	constexpr S3TrayLinks(Object obj) : S3TrayLinks{obj.address()} {}
	S3TrayLinks(Variant variant) : S3TrayLinks{variant.as_object().address()} {}


	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S3TrayLinks::run() { this->voidcall("run"); }
inline Variant S3TrayLinks::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
