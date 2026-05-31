#ifndef TNI_API_HEADER_SEMVERSEMVERPARSING
#define TNI_API_HEADER_SEMVERSEMVERPARSING
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SemVerSemVerParsing : public RefCounted {
	using RefCounted::RefCounted;

	constexpr SemVerSemVerParsing(RefCounted base) : RefCounted{base} {}
	constexpr SemVerSemVerParsing(uint64_t addr) : RefCounted{addr} {}
	constexpr SemVerSemVerParsing(Object obj) : SemVerSemVerParsing{obj.address()} {}
	SemVerSemVerParsing(Variant variant) : SemVerSemVerParsing{variant.as_object().address()} {}


	PROPERTY(raw, String);
	PROPERTY(pos, int64_t);

	inline String get_remaining();
	inline void advance(int64_t count);
	inline int64_t consume_whitespace();
	inline bool peek_token(String s);
	inline bool consume_token(String s);
	inline RefCounted parse_version(RefCounted state, int64_t default_);
	inline RefCounted parse_range(RefCounted state);
};


inline String SemVerSemVerParsing::get_remaining() { return this->operator()("get_remaining"); }
inline void SemVerSemVerParsing::advance(int64_t count) { this->voidcall("advance", count); }
inline int64_t SemVerSemVerParsing::consume_whitespace() { return this->operator()("consume_whitespace"); }
inline bool SemVerSemVerParsing::peek_token(String s) { return this->operator()("peek_token", s); }
inline bool SemVerSemVerParsing::consume_token(String s) { return this->operator()("consume_token", s); }
inline RefCounted SemVerSemVerParsing::parse_version(RefCounted state, int64_t default_) { return RefCounted(this->operator()("parse_version", state, default_).as_object().address()); }
inline RefCounted SemVerSemVerParsing::parse_range(RefCounted state) { return RefCounted(this->operator()("parse_range", state).as_object().address()); }

#endif
