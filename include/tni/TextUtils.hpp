#ifndef TNI_API_HEADER_TEXTUTILS
#define TNI_API_HEADER_TEXTUTILS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TextUtils : public Object {
	using Object::Object;

	constexpr TextUtils(Object base) : Object{base} {}
	constexpr TextUtils(uint64_t addr) : Object{addr} {}
	TextUtils(Variant variant) : TextUtils{variant.as_object().address()} {}

	inline static const String LOWERCASE_ALPHABETS = "abcdefghijklmnopqrstuvwxyz";  // NOTE: You should recompile your mod if this value changes!
	inline static const String UPPERCASE_ALPHABETS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";  // NOTE: You should recompile your mod if this value changes!
	inline static const String DIGITS = "0123456789";  // NOTE: You should recompile your mod if this value changes!


	inline String get_last_n_lines(String inp, int64_t n);
	inline Variant get_random_letters(int64_t count, String symbol_array);
	inline String get_whitelistchar_prefix(String inp, String whitelist);
	inline Variant get_int_suffix(String inp);
	inline String fill_pattstr_with_rand(String pattstr, RandomNumberGenerator rng);
};


inline String TextUtils::get_last_n_lines(String inp, int64_t n) { return operator()("get_last_n_lines", inp, n); }
inline Variant TextUtils::get_random_letters(int64_t count, String symbol_array) { return operator()("get_random_letters", count, symbol_array); }
inline String TextUtils::get_whitelistchar_prefix(String inp, String whitelist) { return operator()("get_whitelistchar_prefix", inp, whitelist); }
inline Variant TextUtils::get_int_suffix(String inp) { return operator()("get_int_suffix", inp); }
inline String TextUtils::fill_pattstr_with_rand(String pattstr, RandomNumberGenerator rng) { return operator()("fill_pattstr_with_rand", pattstr, rng); }

#endif
