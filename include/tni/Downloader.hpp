#ifndef TNI_API_HEADER_DOWNLOADER
#define TNI_API_HEADER_DOWNLOADER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Downloader : public Window {
	using Window::Window;

	constexpr Downloader(Window base) : Window{base} {}
	constexpr Downloader(uint64_t addr) : Window{addr} {}
	constexpr Downloader(Object obj) : Downloader{obj.address()} {}
	Downloader(Variant variant) : Downloader{variant.as_object().address()} {}


	PROPERTY(http_cmake, HTTPRequest);
	PROPERTY(http_zig, HTTPRequest);
	PROPERTY(http_ninja, HTTPRequest);
	PROPERTY(cmake_status, RichTextLabel);
	PROPERTY(make_status, RichTextLabel);
	PROPERTY(git_status, RichTextLabel);
	PROPERTY(zig_status, RichTextLabel);
	PROPERTY(os_tab_container, TabContainer);
	PROPERTY(status, Variant);

	inline void extract_all_from_zip(String path, String dest);
};


inline void Downloader::extract_all_from_zip(String path, String dest) { voidcall("extract_all_from_zip", path, dest); }

#endif
