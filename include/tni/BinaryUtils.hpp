#ifndef TNI_API_HEADER_BINARYUTILS
#define TNI_API_HEADER_BINARYUTILS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct BinaryUtils : public Object {
	using Object::Object;

	constexpr BinaryUtils(Object base) : Object{base} {}
	constexpr BinaryUtils(uint64_t addr) : Object{addr} {}
	BinaryUtils(Variant variant) : BinaryUtils{variant.as_object().address()} {}



	inline int64_t get_binval(Variant layers);
	inline int64_t set_bit(int64_t value, int64_t layer);
	inline int64_t unset_bit(int64_t value, int64_t layer);
	inline int64_t toggle_bit(int64_t value, int64_t layer);
	inline bool get_bit(int64_t value, int64_t layer);
};


inline int64_t BinaryUtils::get_binval(Variant layers) { return operator()("get_binval", layers); }
inline int64_t BinaryUtils::set_bit(int64_t value, int64_t layer) { return operator()("set_bit", value, layer); }
inline int64_t BinaryUtils::unset_bit(int64_t value, int64_t layer) { return operator()("unset_bit", value, layer); }
inline int64_t BinaryUtils::toggle_bit(int64_t value, int64_t layer) { return operator()("toggle_bit", value, layer); }
inline bool BinaryUtils::get_bit(int64_t value, int64_t layer) { return operator()("get_bit", value, layer); }

#endif
