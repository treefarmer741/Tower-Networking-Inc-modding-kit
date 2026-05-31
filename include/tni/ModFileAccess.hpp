#ifndef TNI_API_HEADER_MODFILEACCESS
#define TNI_API_HEADER_MODFILEACCESS
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModFileAccess : public RefCounted {
	using RefCounted::RefCounted;

	constexpr ModFileAccess(RefCounted base) : RefCounted{base} {}
	constexpr ModFileAccess(uint64_t addr) : RefCounted{addr} {}
	constexpr ModFileAccess(Object obj) : ModFileAccess{obj.address()} {}
	ModFileAccess(Variant variant) : ModFileAccess{variant.as_object().address()} {}



	inline bool is_open();
	inline bool eof_reached();
	inline void close();
	inline int64_t get_length();
	inline int64_t get_position();
	inline int64_t get_8();
	inline int64_t get_16();
	inline int64_t get_32();
	inline int64_t get_64();
	inline PackedArray<uint8_t> get_buffer(int64_t length);
	inline PackedArray<std::string> get_csv_line(String delim);
	inline double get_double();
	inline double get_float();
	inline double get_half();
	inline String get_line();
	inline String get_as_text(bool skip_cr);
	inline double get_real();
	inline String get_pascal_string();
	inline String get_var(bool allow_objects);
	inline bool store_8(int64_t value);
	inline bool store_16(int64_t value);
	inline bool store_32(int64_t value);
	inline bool store_64(int64_t value);
	inline bool store_buffer(PackedArray<uint8_t> buffer);
	inline bool store_csv_line(PackedArray<std::string> values, String delim);
	inline bool store_double(double value);
	inline bool store_float(double value);
	inline bool store_half(double value);
	inline bool store_line(String line);
	inline bool store_pascal_string(String string);
	inline bool store_real(double value);
	inline bool store_string(String string);
	inline bool store_var(Variant value, bool full_objects);
};


inline bool ModFileAccess::is_open() { return this->operator()("is_open"); }
inline bool ModFileAccess::eof_reached() { return this->operator()("eof_reached"); }
inline void ModFileAccess::close() { this->voidcall("close"); }
inline int64_t ModFileAccess::get_length() { return this->operator()("get_length"); }
inline int64_t ModFileAccess::get_position() { return this->operator()("get_position"); }
inline int64_t ModFileAccess::get_8() { return this->operator()("get_8"); }
inline int64_t ModFileAccess::get_16() { return this->operator()("get_16"); }
inline int64_t ModFileAccess::get_32() { return this->operator()("get_32"); }
inline int64_t ModFileAccess::get_64() { return this->operator()("get_64"); }
inline PackedArray<uint8_t> ModFileAccess::get_buffer(int64_t length) { return this->operator()("get_buffer", length); }
inline PackedArray<std::string> ModFileAccess::get_csv_line(String delim) { return this->operator()("get_csv_line", delim); }
inline double ModFileAccess::get_double() { return this->operator()("get_double"); }
inline double ModFileAccess::get_float() { return this->operator()("get_float"); }
inline double ModFileAccess::get_half() { return this->operator()("get_half"); }
inline String ModFileAccess::get_line() { return this->operator()("get_line"); }
inline String ModFileAccess::get_as_text(bool skip_cr) { return this->operator()("get_as_text", skip_cr); }
inline double ModFileAccess::get_real() { return this->operator()("get_real"); }
inline String ModFileAccess::get_pascal_string() { return this->operator()("get_pascal_string"); }
inline String ModFileAccess::get_var(bool allow_objects) { return this->operator()("get_var", allow_objects); }
inline bool ModFileAccess::store_8(int64_t value) { return this->operator()("store_8", value); }
inline bool ModFileAccess::store_16(int64_t value) { return this->operator()("store_16", value); }
inline bool ModFileAccess::store_32(int64_t value) { return this->operator()("store_32", value); }
inline bool ModFileAccess::store_64(int64_t value) { return this->operator()("store_64", value); }
inline bool ModFileAccess::store_buffer(PackedArray<uint8_t> buffer) { return this->operator()("store_buffer", buffer); }
inline bool ModFileAccess::store_csv_line(PackedArray<std::string> values, String delim) { return this->operator()("store_csv_line", values, delim); }
inline bool ModFileAccess::store_double(double value) { return this->operator()("store_double", value); }
inline bool ModFileAccess::store_float(double value) { return this->operator()("store_float", value); }
inline bool ModFileAccess::store_half(double value) { return this->operator()("store_half", value); }
inline bool ModFileAccess::store_line(String line) { return this->operator()("store_line", line); }
inline bool ModFileAccess::store_pascal_string(String string) { return this->operator()("store_pascal_string", string); }
inline bool ModFileAccess::store_real(double value) { return this->operator()("store_real", value); }
inline bool ModFileAccess::store_string(String string) { return this->operator()("store_string", string); }
inline bool ModFileAccess::store_var(Variant value, bool full_objects) { return this->operator()("store_var", value, full_objects); }

#endif
