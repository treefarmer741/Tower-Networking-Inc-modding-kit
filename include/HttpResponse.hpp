#ifndef TNI_API_HEADER_HTTPRESPONSE
#define TNI_API_HEADER_HTTPRESPONSE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include <structs.hpp>

struct HttpResponse : public RefCounted {
	using RefCounted::RefCounted;

	constexpr HttpResponse(RefCounted base) : RefCounted{base} {}
	constexpr HttpResponse(uint64_t addr) : RefCounted{addr} {}
	constexpr HttpResponse(Object obj) : HttpResponse{obj.address()} {}
	HttpResponse(Variant variant) : HttpResponse{variant.as_object().address()} {}


	PROPERTY(client, StreamPeer);
	PROPERTY(server_identifier, String);
	PROPERTY(headers, Variant);
	PROPERTY(cookies, Variant);
	PROPERTY(access_control_origin, Variant);
	PROPERTY(access_control_allowed_methods, Variant);
	PROPERTY(access_control_allowed_headers, Variant);

	inline void send_raw(int64_t status_code, Variant data, String content_type, String extra_header);
	inline void send_partial(int64_t status_code, Variant data, String content_type, String extra_header);
	inline void send(int64_t status_code, String data, Variant content_type);
	inline void json(int64_t status_code, Variant data);
	inline void set_header_field(String field, Variant value);
	inline void cookie(String name, String value, Variant options);
};


inline void HttpResponse::send_raw(int64_t status_code, Variant data, String content_type, String extra_header) { voidcall("send_raw", status_code, data, content_type, extra_header); }
inline void HttpResponse::send_partial(int64_t status_code, Variant data, String content_type, String extra_header) { voidcall("send_partial", status_code, data, content_type, extra_header); }
inline void HttpResponse::send(int64_t status_code, String data, Variant content_type) { voidcall("send", status_code, data, content_type); }
inline void HttpResponse::json(int64_t status_code, Variant data) { voidcall("json", status_code, data); }
inline void HttpResponse::set_header_field(String field, Variant value) { voidcall("set_header_field", field, value); }
inline void HttpResponse::cookie(String name, String value, Variant options) { voidcall("cookie", name, value, options); }

#endif
