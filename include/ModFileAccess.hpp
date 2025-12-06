#ifndef TNI_API_HEADER_MODFILEACCESS
#define TNI_API_HEADER_MODFILEACCESS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct ModFileAccess : public Object {
	using Object::Object;


	ModFileAccess(Variant variant) : ModFileAccess{variant.as_object().address()} {}


	inline bool is_open() { return operator()("is_open"); }
	inline bool eof_reached() { return operator()("eof_reached"); }
	inline void close() { voidcall("close"); }
	inline int64_t get_length() { return operator()("get_length"); }
	inline int64_t get_position() { return operator()("get_position"); }
	inline int64_t get_8() { return operator()("get_8"); }
	inline int64_t get_16() { return operator()("get_16"); }
	inline int64_t get_32() { return operator()("get_32"); }
	inline int64_t get_64() { return operator()("get_64"); }
	inline Variant get_buffer(int64_t length) { return operator()("get_buffer", length); }
	inline Variant get_csv_line(String delim) { return operator()("get_csv_line", delim); }
	inline double get_double() { return operator()("get_double"); }
	inline double get_float() { return operator()("get_float"); }
	inline double get_half() { return operator()("get_half"); }
	inline String get_line() { return operator()("get_line"); }
	inline String get_as_text(bool skip_cr) { return operator()("get_as_text", skip_cr); }
	inline double get_real() { return operator()("get_real"); }
	inline String get_pascal_string() { return operator()("get_pascal_string"); }
	inline String get_var(bool allow_objects) { return operator()("get_var", allow_objects); }
	inline bool store_8(int64_t value) { return operator()("store_8", value); }
	inline bool store_16(int64_t value) { return operator()("store_16", value); }
	inline bool store_32(int64_t value) { return operator()("store_32", value); }
	inline bool store_64(int64_t value) { return operator()("store_64", value); }
	inline bool store_buffer(Variant buffer) { return operator()("store_buffer", buffer); }
	inline bool store_csv_line(Variant values, String delim) { return operator()("store_csv_line", values, delim); }
	inline bool store_double(double value) { return operator()("store_double", value); }
	inline bool store_float(double value) { return operator()("store_float", value); }
	inline bool store_half(double value) { return operator()("store_half", value); }
	inline bool store_line(String line) { return operator()("store_line", line); }
	inline bool store_pascal_string(String string) { return operator()("store_pascal_string", string); }
	inline bool store_real(double value) { return operator()("store_real", value); }
	inline bool store_string(String string) { return operator()("store_string", string); }
	inline bool store_var(Variant value, bool full_objects) { return operator()("store_var", value, full_objects); }
};

#endif
