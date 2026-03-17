#ifndef TNI_API_HEADER_POCOSIAOPERANDOPTIONBUTTON
#define TNI_API_HEADER_POCOSIAOPERANDOPTIONBUTTON
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaOperandOptionButton : public OptionButton {
	using OptionButton::OptionButton;

	constexpr PocosiaOperandOptionButton(OptionButton base) : OptionButton{base} {}
	constexpr PocosiaOperandOptionButton(uint64_t addr) : OptionButton{addr} {}
	constexpr PocosiaOperandOptionButton(Object obj) : PocosiaOperandOptionButton{obj.address()} {}
	PocosiaOperandOptionButton(Variant variant) : PocosiaOperandOptionButton{variant.as_object().address()} {}


	PROPERTY(operand_lt, bool);
	PROPERTY(operand_eq, bool);
	PROPERTY(operand_gt, bool);
	PROPERTY(operand_lte, bool);
	PROPERTY(operand_gte, bool);
	PROPERTY(operand_ne, bool);

	inline bool eval_with_values(int64_t lhv, Variant rhv);
};


inline bool PocosiaOperandOptionButton::eval_with_values(int64_t lhv, Variant rhv) { return operator()("eval_with_values", lhv, rhv); }

#endif
