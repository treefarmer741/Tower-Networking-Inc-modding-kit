#ifndef TNI_API_HEADER_HTTPROUTER
#define TNI_API_HEADER_HTTPROUTER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include <structs.hpp>

struct HttpRouter : public RefCounted {
	using RefCounted::RefCounted;

	constexpr HttpRouter(RefCounted base) : RefCounted{base} {}
	constexpr HttpRouter(uint64_t addr) : RefCounted{addr} {}
	constexpr HttpRouter(Object obj) : HttpRouter{obj.address()} {}
	HttpRouter(Variant variant) : HttpRouter{variant.as_object().address()} {}

//	PROPERTY(HttpResponse, Variant);  // Const value type was not supported.
//	PROPERTY(HttpRequest, Variant);  // Const value type was not supported.

	PROPERTY(path, String);
	PROPERTY(rpath, RegEx);
	PROPERTY(params, Variant);
	PROPERTY(handle_get, Variant);
	PROPERTY(handle_post, Variant);
	PROPERTY(handle_head, Variant);
	PROPERTY(handle_put, Variant);
	PROPERTY(handle_patch, Variant);
	PROPERTY(handle_delete, Variant);
	PROPERTY(handle_options, Variant);
	PROPERTY(condition, Variant);

};



#endif
