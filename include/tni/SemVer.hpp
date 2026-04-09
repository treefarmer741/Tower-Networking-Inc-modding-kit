#ifndef TNI_API_HEADER_SEMVER
#define TNI_API_HEADER_SEMVER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SemVer : public Object {
	using Object::Object;

	constexpr SemVer(Object base) : Object{base} {}
	constexpr SemVer(uint64_t addr) : Object{addr} {}
	SemVer(Variant variant) : SemVer{variant.as_object().address()} {}

	enum VersionComparatorUnaryOp : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		EQ = 0,
		LT = 1,
		LE = 2,
		GT = 3,
		GE = 4,
		TILDE = 5,
		CARET = 6,
	};
	enum VersionComparatorBinaryOp : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		AND = 0,
		OR = 1,
	};
	// Inner class Version exposed as SemVerVersion
	// Inner class VersionRange exposed as SemVerVersionRange
	// Inner class VersionComparatorUnary exposed as SemVerVersionComparatorUnary
	// Inner class VersionComparatorRange exposed as SemVerVersionComparatorRange
	// Inner class VersionComparatorBinary exposed as SemVerVersionComparatorBinary
	// Inner class SemVerParsing exposed as SemVerSemVerParsing


};



#endif
