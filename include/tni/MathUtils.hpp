#ifndef TNI_API_HEADER_MATHUTILS
#define TNI_API_HEADER_MATHUTILS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MathUtils : public Object {
	using Object::Object;

	constexpr MathUtils(Object base) : Object{base} {}
	constexpr MathUtils(uint64_t addr) : Object{addr} {}
	MathUtils(Variant variant) : MathUtils{variant.as_object().address()} {}



	inline Variant get_hhmm_from_minutes_of_day(int64_t minu);
	inline int64_t random_selection_by_weight(Variant weights, RandomNumberGenerator rng);
	inline Variant random_selection_by_weight_with_shufflebag(Variant weights, RandomNumberGenerator rng);
	inline Variant uniform_random_multi_selection(Variant shuffle_bag, int64_t n);
	inline Variant int_to_baseN(int64_t inp, Variant symbols, int64_t npad);
	inline Variant copy_shuffle_array_with_rng(Variant inpa, RandomNumberGenerator rng);
	inline Variant get_discrete_level_from_float(Variant discrete_levels, double test_ratio);
	inline double get_diminishing_return_value(double input, double scale, double efficiency);
	inline double get_color_hue_from_int(int64_t n);
	inline Variant get_color_from_int(int64_t n);
};


inline Variant MathUtils::get_hhmm_from_minutes_of_day(int64_t minu) { return operator()("get_hhmm_from_minutes_of_day", minu); }
inline int64_t MathUtils::random_selection_by_weight(Variant weights, RandomNumberGenerator rng) { return operator()("random_selection_by_weight", weights, rng); }
inline Variant MathUtils::random_selection_by_weight_with_shufflebag(Variant weights, RandomNumberGenerator rng) { return operator()("random_selection_by_weight_with_shufflebag", weights, rng); }
inline Variant MathUtils::uniform_random_multi_selection(Variant shuffle_bag, int64_t n) { return operator()("uniform_random_multi_selection", shuffle_bag, n); }
inline Variant MathUtils::int_to_baseN(int64_t inp, Variant symbols, int64_t npad) { return operator()("int_to_baseN", inp, symbols, npad); }
inline Variant MathUtils::copy_shuffle_array_with_rng(Variant inpa, RandomNumberGenerator rng) { return operator()("copy_shuffle_array_with_rng", inpa, rng); }
inline Variant MathUtils::get_discrete_level_from_float(Variant discrete_levels, double test_ratio) { return operator()("get_discrete_level_from_float", discrete_levels, test_ratio); }
inline double MathUtils::get_diminishing_return_value(double input, double scale, double efficiency) { return operator()("get_diminishing_return_value", input, scale, efficiency); }
inline double MathUtils::get_color_hue_from_int(int64_t n) { return operator()("get_color_hue_from_int", n); }
inline Variant MathUtils::get_color_from_int(int64_t n) { return operator()("get_color_from_int", n); }

#endif
