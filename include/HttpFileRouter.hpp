#ifndef TNI_API_HEADER_HTTPFILEROUTER
#define TNI_API_HEADER_HTTPFILEROUTER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include <structs.hpp>

struct HttpFileRouter : public RefCounted {
	using RefCounted::RefCounted;

	constexpr HttpFileRouter(RefCounted base) : RefCounted{base} {}
	constexpr HttpFileRouter(uint64_t addr) : RefCounted{addr} {}
	constexpr HttpFileRouter(Object obj) : HttpFileRouter{obj.address()} {}
	HttpFileRouter(Variant variant) : HttpFileRouter{variant.as_object().address()} {}


	PROPERTY(localpath, String);
	PROPERTY(index_page, String);
	PROPERTY(fallback_page, String);
	PROPERTY(extensions, Variant);
	PROPERTY(exclude_extensions, Variant);
	PROPERTY(listfiles, bool);
	PROPERTY(weekdays, Variant);
	PROPERTY(monthnames, Variant);
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
