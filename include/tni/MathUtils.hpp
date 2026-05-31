#ifndef TNI_API_HEADER_MATHUTILS
#define TNI_API_HEADER_MATHUTILS
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MathUtils : public Object {
	using Object::Object;

	constexpr MathUtils(Object base) : Object{base} {}
	constexpr MathUtils(uint64_t addr) : Object{addr} {}
	MathUtils(Variant variant) : MathUtils{variant.as_object().address()} {}



	inline Variant color_from_int(double hue_min, double hue_max, int64_t cint, bool mix_sat, bool mix_val);
	inline double get_detfloat_from_snum();
	inline void remove_elements_leq_than(Variant d, double leq);
	inline Variant get_hhmm_from_minutes_of_day(int64_t minu, bool with_colon);
	inline int64_t random_selection_by_weight(Variant weights, RandomNumberGenerator rng);
	inline Variant random_selection_by_weight_with_shufflebag(Variant weights, RandomNumberGenerator rng);
	inline Variant uniform_random_multi_selection(Variant shuffle_bag, int64_t n);
	inline Variant int_to_baseN(int64_t inp, Variant symbols, int64_t npad);
	inline Variant copy_shuffle_array_with_rng(Variant inpa, RandomNumberGenerator rng);
	inline Variant get_discrete_level_from_float(Variant discrete_levels, double test_ratio);
	inline double get_diminishing_return_value(double input, double scale, double efficiency);
	inline double get_color_hue_from_int(int64_t n);
	inline Variant get_color_from_int(int64_t n);
	inline Variant uniform_random_multi_selection_with_seed(Variant shuffle_bag, int64_t n, Variant rng_seed);
};


inline Variant MathUtils::color_from_int(double hue_min, double hue_max, int64_t cint, bool mix_sat, bool mix_val) { return this->operator()("color_from_int", hue_min, hue_max, cint, mix_sat, mix_val); }
inline double MathUtils::get_detfloat_from_snum() { return this->operator()("get_detfloat_from_snum"); }
inline void MathUtils::remove_elements_leq_than(Variant d, double leq) { this->voidcall("remove_elements_leq_than", d, leq); }
inline Variant MathUtils::get_hhmm_from_minutes_of_day(int64_t minu, bool with_colon) { return this->operator()("get_hhmm_from_minutes_of_day", minu, with_colon); }
inline int64_t MathUtils::random_selection_by_weight(Variant weights, RandomNumberGenerator rng) { return this->operator()("random_selection_by_weight", weights, rng); }
inline Variant MathUtils::random_selection_by_weight_with_shufflebag(Variant weights, RandomNumberGenerator rng) { return this->operator()("random_selection_by_weight_with_shufflebag", weights, rng); }
inline Variant MathUtils::uniform_random_multi_selection(Variant shuffle_bag, int64_t n) { return this->operator()("uniform_random_multi_selection", shuffle_bag, n); }
inline Variant MathUtils::int_to_baseN(int64_t inp, Variant symbols, int64_t npad) { return this->operator()("int_to_baseN", inp, symbols, npad); }
inline Variant MathUtils::copy_shuffle_array_with_rng(Variant inpa, RandomNumberGenerator rng) { return this->operator()("copy_shuffle_array_with_rng", inpa, rng); }
inline Variant MathUtils::get_discrete_level_from_float(Variant discrete_levels, double test_ratio) { return this->operator()("get_discrete_level_from_float", discrete_levels, test_ratio); }
inline double MathUtils::get_diminishing_return_value(double input, double scale, double efficiency) { return this->operator()("get_diminishing_return_value", input, scale, efficiency); }
inline double MathUtils::get_color_hue_from_int(int64_t n) { return this->operator()("get_color_hue_from_int", n); }
inline Variant MathUtils::get_color_from_int(int64_t n) { return this->operator()("get_color_from_int", n); }
inline Variant MathUtils::uniform_random_multi_selection_with_seed(Variant shuffle_bag, int64_t n, Variant rng_seed) { return this->operator()("uniform_random_multi_selection_with_seed", shuffle_bag, n, rng_seed); }

#endif
