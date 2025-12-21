#ifndef TNI_API_HEADER_ALGOUTILS
#define TNI_API_HEADER_ALGOUTILS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct AlgoUtils : public Object {
	using Object::Object;

	constexpr AlgoUtils(Object base) : Object{base} {}
	constexpr AlgoUtils(uint64_t addr) : Object{addr} {}
	AlgoUtils(Variant variant) : AlgoUtils{variant.as_object().address()} {}



	inline Variant uniq_only(Variant a);
	inline Variant get_top_n_from_dict(Variant d, int64_t n);
};


inline Variant AlgoUtils::uniq_only(Variant a) { return operator()("uniq_only", a); }
inline Variant AlgoUtils::get_top_n_from_dict(Variant d, int64_t n) { return operator()("get_top_n_from_dict", d, n); }

#endif
