#ifndef TNI_API_HEADER_RELXFMCAM3DSUBVIEW
#define TNI_API_HEADER_RELXFMCAM3DSUBVIEW
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct RelXfmCam3DSubview : public SubViewport {
	using SubViewport::SubViewport;

	constexpr RelXfmCam3DSubview(SubViewport base) : SubViewport{base} {}
	constexpr RelXfmCam3DSubview(uint64_t addr) : SubViewport{addr} {}
	constexpr RelXfmCam3DSubview(Object obj) : RelXfmCam3DSubview{obj.address()} {}
	RelXfmCam3DSubview(Variant variant) : RelXfmCam3DSubview{variant.as_object().address()} {}


	PROPERTY(camera3d, Camera3D);

};



#endif
