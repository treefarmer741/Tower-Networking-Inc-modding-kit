#ifndef TNI_API_HEADER_HTTPREQUEST
#define TNI_API_HEADER_HTTPREQUEST
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct HttpRequest : public RefCounted {
	using RefCounted::RefCounted;

	constexpr HttpRequest(RefCounted base) : RefCounted{base} {}
	constexpr HttpRequest(uint64_t addr) : RefCounted{addr} {}
	constexpr HttpRequest(Object obj) : HttpRequest{obj.address()} {}
	HttpRequest(Variant variant) : HttpRequest{variant.as_object().address()} {}


	PROPERTY(headers, Variant);
	PROPERTY(body, String);
	PROPERTY(query_match, RegExMatch);
	PROPERTY(path, String);
	PROPERTY(method, String);
	PROPERTY(parameters, Variant);
	PROPERTY(query, Variant);

	inline Variant get_body_parsed();
};


inline Variant HttpRequest::get_body_parsed() { return operator()("get_body_parsed"); }

#endif
