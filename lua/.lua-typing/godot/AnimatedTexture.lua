---@meta _
-- Generated API for game version 0.9.1

---@class AnimatedTexture : Texture2D
---@field frames integer
---@field current_frame integer
---@field pause boolean
---@field one_shot boolean
---@field speed_scale number
local AnimatedTexture = {
	---@type Texture2D
	["frame_0/texture"] = nil,
	---@type number
	["frame_0/duration"] = nil,
	---@type Texture2D
	["frame_1/texture"] = nil,
	---@type number
	["frame_1/duration"] = nil,
	---@type Texture2D
	["frame_2/texture"] = nil,
	---@type number
	["frame_2/duration"] = nil,
	---@type Texture2D
	["frame_3/texture"] = nil,
	---@type number
	["frame_3/duration"] = nil,
	---@type Texture2D
	["frame_4/texture"] = nil,
	---@type number
	["frame_4/duration"] = nil,
	---@type Texture2D
	["frame_5/texture"] = nil,
	---@type number
	["frame_5/duration"] = nil,
	---@type Texture2D
	["frame_6/texture"] = nil,
	---@type number
	["frame_6/duration"] = nil,
	---@type Texture2D
	["frame_7/texture"] = nil,
	---@type number
	["frame_7/duration"] = nil,
	---@type Texture2D
	["frame_8/texture"] = nil,
	---@type number
	["frame_8/duration"] = nil,
	---@type Texture2D
	["frame_9/texture"] = nil,
	---@type number
	["frame_9/duration"] = nil,
	---@type Texture2D
	["frame_10/texture"] = nil,
	---@type number
	["frame_10/duration"] = nil,
	---@type Texture2D
	["frame_11/texture"] = nil,
	---@type number
	["frame_11/duration"] = nil,
	---@type Texture2D
	["frame_12/texture"] = nil,
	---@type number
	["frame_12/duration"] = nil,
	---@type Texture2D
	["frame_13/texture"] = nil,
	---@type number
	["frame_13/duration"] = nil,
	---@type Texture2D
	["frame_14/texture"] = nil,
	---@type number
	["frame_14/duration"] = nil,
	---@type Texture2D
	["frame_15/texture"] = nil,
	---@type number
	["frame_15/duration"] = nil,
	---@type Texture2D
	["frame_16/texture"] = nil,
	---@type number
	["frame_16/duration"] = nil,
	---@type Texture2D
	["frame_17/texture"] = nil,
	---@type number
	["frame_17/duration"] = nil,
	---@type Texture2D
	["frame_18/texture"] = nil,
	---@type number
	["frame_18/duration"] = nil,
	---@type Texture2D
	["frame_19/texture"] = nil,
	---@type number
	["frame_19/duration"] = nil,
	---@type Texture2D
	["frame_20/texture"] = nil,
	---@type number
	["frame_20/duration"] = nil,
	---@type Texture2D
	["frame_21/texture"] = nil,
	---@type number
	["frame_21/duration"] = nil,
	---@type Texture2D
	["frame_22/texture"] = nil,
	---@type number
	["frame_22/duration"] = nil,
	---@type Texture2D
	["frame_23/texture"] = nil,
	---@type number
	["frame_23/duration"] = nil,
	---@type Texture2D
	["frame_24/texture"] = nil,
	---@type number
	["frame_24/duration"] = nil,
	---@type Texture2D
	["frame_25/texture"] = nil,
	---@type number
	["frame_25/duration"] = nil,
	---@type Texture2D
	["frame_26/texture"] = nil,
	---@type number
	["frame_26/duration"] = nil,
	---@type Texture2D
	["frame_27/texture"] = nil,
	---@type number
	["frame_27/duration"] = nil,
	---@type Texture2D
	["frame_28/texture"] = nil,
	---@type number
	["frame_28/duration"] = nil,
	---@type Texture2D
	["frame_29/texture"] = nil,
	---@type number
	["frame_29/duration"] = nil,
	---@type Texture2D
	["frame_30/texture"] = nil,
	---@type number
	["frame_30/duration"] = nil,
	---@type Texture2D
	["frame_31/texture"] = nil,
	---@type number
	["frame_31/duration"] = nil,
	---@type Texture2D
	["frame_32/texture"] = nil,
	---@type number
	["frame_32/duration"] = nil,
	---@type Texture2D
	["frame_33/texture"] = nil,
	---@type number
	["frame_33/duration"] = nil,
	---@type Texture2D
	["frame_34/texture"] = nil,
	---@type number
	["frame_34/duration"] = nil,
	---@type Texture2D
	["frame_35/texture"] = nil,
	---@type number
	["frame_35/duration"] = nil,
	---@type Texture2D
	["frame_36/texture"] = nil,
	---@type number
	["frame_36/duration"] = nil,
	---@type Texture2D
	["frame_37/texture"] = nil,
	---@type number
	["frame_37/duration"] = nil,
	---@type Texture2D
	["frame_38/texture"] = nil,
	---@type number
	["frame_38/duration"] = nil,
	---@type Texture2D
	["frame_39/texture"] = nil,
	---@type number
	["frame_39/duration"] = nil,
	---@type Texture2D
	["frame_40/texture"] = nil,
	---@type number
	["frame_40/duration"] = nil,
	---@type Texture2D
	["frame_41/texture"] = nil,
	---@type number
	["frame_41/duration"] = nil,
	---@type Texture2D
	["frame_42/texture"] = nil,
	---@type number
	["frame_42/duration"] = nil,
	---@type Texture2D
	["frame_43/texture"] = nil,
	---@type number
	["frame_43/duration"] = nil,
	---@type Texture2D
	["frame_44/texture"] = nil,
	---@type number
	["frame_44/duration"] = nil,
	---@type Texture2D
	["frame_45/texture"] = nil,
	---@type number
	["frame_45/duration"] = nil,
	---@type Texture2D
	["frame_46/texture"] = nil,
	---@type number
	["frame_46/duration"] = nil,
	---@type Texture2D
	["frame_47/texture"] = nil,
	---@type number
	["frame_47/duration"] = nil,
	---@type Texture2D
	["frame_48/texture"] = nil,
	---@type number
	["frame_48/duration"] = nil,
	---@type Texture2D
	["frame_49/texture"] = nil,
	---@type number
	["frame_49/duration"] = nil,
	---@type Texture2D
	["frame_50/texture"] = nil,
	---@type number
	["frame_50/duration"] = nil,
	---@type Texture2D
	["frame_51/texture"] = nil,
	---@type number
	["frame_51/duration"] = nil,
	---@type Texture2D
	["frame_52/texture"] = nil,
	---@type number
	["frame_52/duration"] = nil,
	---@type Texture2D
	["frame_53/texture"] = nil,
	---@type number
	["frame_53/duration"] = nil,
	---@type Texture2D
	["frame_54/texture"] = nil,
	---@type number
	["frame_54/duration"] = nil,
	---@type Texture2D
	["frame_55/texture"] = nil,
	---@type number
	["frame_55/duration"] = nil,
	---@type Texture2D
	["frame_56/texture"] = nil,
	---@type number
	["frame_56/duration"] = nil,
	---@type Texture2D
	["frame_57/texture"] = nil,
	---@type number
	["frame_57/duration"] = nil,
	---@type Texture2D
	["frame_58/texture"] = nil,
	---@type number
	["frame_58/duration"] = nil,
	---@type Texture2D
	["frame_59/texture"] = nil,
	---@type number
	["frame_59/duration"] = nil,
	---@type Texture2D
	["frame_60/texture"] = nil,
	---@type number
	["frame_60/duration"] = nil,
	---@type Texture2D
	["frame_61/texture"] = nil,
	---@type number
	["frame_61/duration"] = nil,
	---@type Texture2D
	["frame_62/texture"] = nil,
	---@type number
	["frame_62/duration"] = nil,
	---@type Texture2D
	["frame_63/texture"] = nil,
	---@type number
	["frame_63/duration"] = nil,
	---@type Texture2D
	["frame_64/texture"] = nil,
	---@type number
	["frame_64/duration"] = nil,
	---@type Texture2D
	["frame_65/texture"] = nil,
	---@type number
	["frame_65/duration"] = nil,
	---@type Texture2D
	["frame_66/texture"] = nil,
	---@type number
	["frame_66/duration"] = nil,
	---@type Texture2D
	["frame_67/texture"] = nil,
	---@type number
	["frame_67/duration"] = nil,
	---@type Texture2D
	["frame_68/texture"] = nil,
	---@type number
	["frame_68/duration"] = nil,
	---@type Texture2D
	["frame_69/texture"] = nil,
	---@type number
	["frame_69/duration"] = nil,
	---@type Texture2D
	["frame_70/texture"] = nil,
	---@type number
	["frame_70/duration"] = nil,
	---@type Texture2D
	["frame_71/texture"] = nil,
	---@type number
	["frame_71/duration"] = nil,
	---@type Texture2D
	["frame_72/texture"] = nil,
	---@type number
	["frame_72/duration"] = nil,
	---@type Texture2D
	["frame_73/texture"] = nil,
	---@type number
	["frame_73/duration"] = nil,
	---@type Texture2D
	["frame_74/texture"] = nil,
	---@type number
	["frame_74/duration"] = nil,
	---@type Texture2D
	["frame_75/texture"] = nil,
	---@type number
	["frame_75/duration"] = nil,
	---@type Texture2D
	["frame_76/texture"] = nil,
	---@type number
	["frame_76/duration"] = nil,
	---@type Texture2D
	["frame_77/texture"] = nil,
	---@type number
	["frame_77/duration"] = nil,
	---@type Texture2D
	["frame_78/texture"] = nil,
	---@type number
	["frame_78/duration"] = nil,
	---@type Texture2D
	["frame_79/texture"] = nil,
	---@type number
	["frame_79/duration"] = nil,
	---@type Texture2D
	["frame_80/texture"] = nil,
	---@type number
	["frame_80/duration"] = nil,
	---@type Texture2D
	["frame_81/texture"] = nil,
	---@type number
	["frame_81/duration"] = nil,
	---@type Texture2D
	["frame_82/texture"] = nil,
	---@type number
	["frame_82/duration"] = nil,
	---@type Texture2D
	["frame_83/texture"] = nil,
	---@type number
	["frame_83/duration"] = nil,
	---@type Texture2D
	["frame_84/texture"] = nil,
	---@type number
	["frame_84/duration"] = nil,
	---@type Texture2D
	["frame_85/texture"] = nil,
	---@type number
	["frame_85/duration"] = nil,
	---@type Texture2D
	["frame_86/texture"] = nil,
	---@type number
	["frame_86/duration"] = nil,
	---@type Texture2D
	["frame_87/texture"] = nil,
	---@type number
	["frame_87/duration"] = nil,
	---@type Texture2D
	["frame_88/texture"] = nil,
	---@type number
	["frame_88/duration"] = nil,
	---@type Texture2D
	["frame_89/texture"] = nil,
	---@type number
	["frame_89/duration"] = nil,
	---@type Texture2D
	["frame_90/texture"] = nil,
	---@type number
	["frame_90/duration"] = nil,
	---@type Texture2D
	["frame_91/texture"] = nil,
	---@type number
	["frame_91/duration"] = nil,
	---@type Texture2D
	["frame_92/texture"] = nil,
	---@type number
	["frame_92/duration"] = nil,
	---@type Texture2D
	["frame_93/texture"] = nil,
	---@type number
	["frame_93/duration"] = nil,
	---@type Texture2D
	["frame_94/texture"] = nil,
	---@type number
	["frame_94/duration"] = nil,
	---@type Texture2D
	["frame_95/texture"] = nil,
	---@type number
	["frame_95/duration"] = nil,
	---@type Texture2D
	["frame_96/texture"] = nil,
	---@type number
	["frame_96/duration"] = nil,
	---@type Texture2D
	["frame_97/texture"] = nil,
	---@type number
	["frame_97/duration"] = nil,
	---@type Texture2D
	["frame_98/texture"] = nil,
	---@type number
	["frame_98/duration"] = nil,
	---@type Texture2D
	["frame_99/texture"] = nil,
	---@type number
	["frame_99/duration"] = nil,
	---@type Texture2D
	["frame_100/texture"] = nil,
	---@type number
	["frame_100/duration"] = nil,
	---@type Texture2D
	["frame_101/texture"] = nil,
	---@type number
	["frame_101/duration"] = nil,
	---@type Texture2D
	["frame_102/texture"] = nil,
	---@type number
	["frame_102/duration"] = nil,
	---@type Texture2D
	["frame_103/texture"] = nil,
	---@type number
	["frame_103/duration"] = nil,
	---@type Texture2D
	["frame_104/texture"] = nil,
	---@type number
	["frame_104/duration"] = nil,
	---@type Texture2D
	["frame_105/texture"] = nil,
	---@type number
	["frame_105/duration"] = nil,
	---@type Texture2D
	["frame_106/texture"] = nil,
	---@type number
	["frame_106/duration"] = nil,
	---@type Texture2D
	["frame_107/texture"] = nil,
	---@type number
	["frame_107/duration"] = nil,
	---@type Texture2D
	["frame_108/texture"] = nil,
	---@type number
	["frame_108/duration"] = nil,
	---@type Texture2D
	["frame_109/texture"] = nil,
	---@type number
	["frame_109/duration"] = nil,
	---@type Texture2D
	["frame_110/texture"] = nil,
	---@type number
	["frame_110/duration"] = nil,
	---@type Texture2D
	["frame_111/texture"] = nil,
	---@type number
	["frame_111/duration"] = nil,
	---@type Texture2D
	["frame_112/texture"] = nil,
	---@type number
	["frame_112/duration"] = nil,
	---@type Texture2D
	["frame_113/texture"] = nil,
	---@type number
	["frame_113/duration"] = nil,
	---@type Texture2D
	["frame_114/texture"] = nil,
	---@type number
	["frame_114/duration"] = nil,
	---@type Texture2D
	["frame_115/texture"] = nil,
	---@type number
	["frame_115/duration"] = nil,
	---@type Texture2D
	["frame_116/texture"] = nil,
	---@type number
	["frame_116/duration"] = nil,
	---@type Texture2D
	["frame_117/texture"] = nil,
	---@type number
	["frame_117/duration"] = nil,
	---@type Texture2D
	["frame_118/texture"] = nil,
	---@type number
	["frame_118/duration"] = nil,
	---@type Texture2D
	["frame_119/texture"] = nil,
	---@type number
	["frame_119/duration"] = nil,
	---@type Texture2D
	["frame_120/texture"] = nil,
	---@type number
	["frame_120/duration"] = nil,
	---@type Texture2D
	["frame_121/texture"] = nil,
	---@type number
	["frame_121/duration"] = nil,
	---@type Texture2D
	["frame_122/texture"] = nil,
	---@type number
	["frame_122/duration"] = nil,
	---@type Texture2D
	["frame_123/texture"] = nil,
	---@type number
	["frame_123/duration"] = nil,
	---@type Texture2D
	["frame_124/texture"] = nil,
	---@type number
	["frame_124/duration"] = nil,
	---@type Texture2D
	["frame_125/texture"] = nil,
	---@type number
	["frame_125/duration"] = nil,
	---@type Texture2D
	["frame_126/texture"] = nil,
	---@type number
	["frame_126/duration"] = nil,
	---@type Texture2D
	["frame_127/texture"] = nil,
	---@type number
	["frame_127/duration"] = nil,
	---@type Texture2D
	["frame_128/texture"] = nil,
	---@type number
	["frame_128/duration"] = nil,
	---@type Texture2D
	["frame_129/texture"] = nil,
	---@type number
	["frame_129/duration"] = nil,
	---@type Texture2D
	["frame_130/texture"] = nil,
	---@type number
	["frame_130/duration"] = nil,
	---@type Texture2D
	["frame_131/texture"] = nil,
	---@type number
	["frame_131/duration"] = nil,
	---@type Texture2D
	["frame_132/texture"] = nil,
	---@type number
	["frame_132/duration"] = nil,
	---@type Texture2D
	["frame_133/texture"] = nil,
	---@type number
	["frame_133/duration"] = nil,
	---@type Texture2D
	["frame_134/texture"] = nil,
	---@type number
	["frame_134/duration"] = nil,
	---@type Texture2D
	["frame_135/texture"] = nil,
	---@type number
	["frame_135/duration"] = nil,
	---@type Texture2D
	["frame_136/texture"] = nil,
	---@type number
	["frame_136/duration"] = nil,
	---@type Texture2D
	["frame_137/texture"] = nil,
	---@type number
	["frame_137/duration"] = nil,
	---@type Texture2D
	["frame_138/texture"] = nil,
	---@type number
	["frame_138/duration"] = nil,
	---@type Texture2D
	["frame_139/texture"] = nil,
	---@type number
	["frame_139/duration"] = nil,
	---@type Texture2D
	["frame_140/texture"] = nil,
	---@type number
	["frame_140/duration"] = nil,
	---@type Texture2D
	["frame_141/texture"] = nil,
	---@type number
	["frame_141/duration"] = nil,
	---@type Texture2D
	["frame_142/texture"] = nil,
	---@type number
	["frame_142/duration"] = nil,
	---@type Texture2D
	["frame_143/texture"] = nil,
	---@type number
	["frame_143/duration"] = nil,
	---@type Texture2D
	["frame_144/texture"] = nil,
	---@type number
	["frame_144/duration"] = nil,
	---@type Texture2D
	["frame_145/texture"] = nil,
	---@type number
	["frame_145/duration"] = nil,
	---@type Texture2D
	["frame_146/texture"] = nil,
	---@type number
	["frame_146/duration"] = nil,
	---@type Texture2D
	["frame_147/texture"] = nil,
	---@type number
	["frame_147/duration"] = nil,
	---@type Texture2D
	["frame_148/texture"] = nil,
	---@type number
	["frame_148/duration"] = nil,
	---@type Texture2D
	["frame_149/texture"] = nil,
	---@type number
	["frame_149/duration"] = nil,
	---@type Texture2D
	["frame_150/texture"] = nil,
	---@type number
	["frame_150/duration"] = nil,
	---@type Texture2D
	["frame_151/texture"] = nil,
	---@type number
	["frame_151/duration"] = nil,
	---@type Texture2D
	["frame_152/texture"] = nil,
	---@type number
	["frame_152/duration"] = nil,
	---@type Texture2D
	["frame_153/texture"] = nil,
	---@type number
	["frame_153/duration"] = nil,
	---@type Texture2D
	["frame_154/texture"] = nil,
	---@type number
	["frame_154/duration"] = nil,
	---@type Texture2D
	["frame_155/texture"] = nil,
	---@type number
	["frame_155/duration"] = nil,
	---@type Texture2D
	["frame_156/texture"] = nil,
	---@type number
	["frame_156/duration"] = nil,
	---@type Texture2D
	["frame_157/texture"] = nil,
	---@type number
	["frame_157/duration"] = nil,
	---@type Texture2D
	["frame_158/texture"] = nil,
	---@type number
	["frame_158/duration"] = nil,
	---@type Texture2D
	["frame_159/texture"] = nil,
	---@type number
	["frame_159/duration"] = nil,
	---@type Texture2D
	["frame_160/texture"] = nil,
	---@type number
	["frame_160/duration"] = nil,
	---@type Texture2D
	["frame_161/texture"] = nil,
	---@type number
	["frame_161/duration"] = nil,
	---@type Texture2D
	["frame_162/texture"] = nil,
	---@type number
	["frame_162/duration"] = nil,
	---@type Texture2D
	["frame_163/texture"] = nil,
	---@type number
	["frame_163/duration"] = nil,
	---@type Texture2D
	["frame_164/texture"] = nil,
	---@type number
	["frame_164/duration"] = nil,
	---@type Texture2D
	["frame_165/texture"] = nil,
	---@type number
	["frame_165/duration"] = nil,
	---@type Texture2D
	["frame_166/texture"] = nil,
	---@type number
	["frame_166/duration"] = nil,
	---@type Texture2D
	["frame_167/texture"] = nil,
	---@type number
	["frame_167/duration"] = nil,
	---@type Texture2D
	["frame_168/texture"] = nil,
	---@type number
	["frame_168/duration"] = nil,
	---@type Texture2D
	["frame_169/texture"] = nil,
	---@type number
	["frame_169/duration"] = nil,
	---@type Texture2D
	["frame_170/texture"] = nil,
	---@type number
	["frame_170/duration"] = nil,
	---@type Texture2D
	["frame_171/texture"] = nil,
	---@type number
	["frame_171/duration"] = nil,
	---@type Texture2D
	["frame_172/texture"] = nil,
	---@type number
	["frame_172/duration"] = nil,
	---@type Texture2D
	["frame_173/texture"] = nil,
	---@type number
	["frame_173/duration"] = nil,
	---@type Texture2D
	["frame_174/texture"] = nil,
	---@type number
	["frame_174/duration"] = nil,
	---@type Texture2D
	["frame_175/texture"] = nil,
	---@type number
	["frame_175/duration"] = nil,
	---@type Texture2D
	["frame_176/texture"] = nil,
	---@type number
	["frame_176/duration"] = nil,
	---@type Texture2D
	["frame_177/texture"] = nil,
	---@type number
	["frame_177/duration"] = nil,
	---@type Texture2D
	["frame_178/texture"] = nil,
	---@type number
	["frame_178/duration"] = nil,
	---@type Texture2D
	["frame_179/texture"] = nil,
	---@type number
	["frame_179/duration"] = nil,
	---@type Texture2D
	["frame_180/texture"] = nil,
	---@type number
	["frame_180/duration"] = nil,
	---@type Texture2D
	["frame_181/texture"] = nil,
	---@type number
	["frame_181/duration"] = nil,
	---@type Texture2D
	["frame_182/texture"] = nil,
	---@type number
	["frame_182/duration"] = nil,
	---@type Texture2D
	["frame_183/texture"] = nil,
	---@type number
	["frame_183/duration"] = nil,
	---@type Texture2D
	["frame_184/texture"] = nil,
	---@type number
	["frame_184/duration"] = nil,
	---@type Texture2D
	["frame_185/texture"] = nil,
	---@type number
	["frame_185/duration"] = nil,
	---@type Texture2D
	["frame_186/texture"] = nil,
	---@type number
	["frame_186/duration"] = nil,
	---@type Texture2D
	["frame_187/texture"] = nil,
	---@type number
	["frame_187/duration"] = nil,
	---@type Texture2D
	["frame_188/texture"] = nil,
	---@type number
	["frame_188/duration"] = nil,
	---@type Texture2D
	["frame_189/texture"] = nil,
	---@type number
	["frame_189/duration"] = nil,
	---@type Texture2D
	["frame_190/texture"] = nil,
	---@type number
	["frame_190/duration"] = nil,
	---@type Texture2D
	["frame_191/texture"] = nil,
	---@type number
	["frame_191/duration"] = nil,
	---@type Texture2D
	["frame_192/texture"] = nil,
	---@type number
	["frame_192/duration"] = nil,
	---@type Texture2D
	["frame_193/texture"] = nil,
	---@type number
	["frame_193/duration"] = nil,
	---@type Texture2D
	["frame_194/texture"] = nil,
	---@type number
	["frame_194/duration"] = nil,
	---@type Texture2D
	["frame_195/texture"] = nil,
	---@type number
	["frame_195/duration"] = nil,
	---@type Texture2D
	["frame_196/texture"] = nil,
	---@type number
	["frame_196/duration"] = nil,
	---@type Texture2D
	["frame_197/texture"] = nil,
	---@type number
	["frame_197/duration"] = nil,
	---@type Texture2D
	["frame_198/texture"] = nil,
	---@type number
	["frame_198/duration"] = nil,
	---@type Texture2D
	["frame_199/texture"] = nil,
	---@type number
	["frame_199/duration"] = nil,
	---@type Texture2D
	["frame_200/texture"] = nil,
	---@type number
	["frame_200/duration"] = nil,
	---@type Texture2D
	["frame_201/texture"] = nil,
	---@type number
	["frame_201/duration"] = nil,
	---@type Texture2D
	["frame_202/texture"] = nil,
	---@type number
	["frame_202/duration"] = nil,
	---@type Texture2D
	["frame_203/texture"] = nil,
	---@type number
	["frame_203/duration"] = nil,
	---@type Texture2D
	["frame_204/texture"] = nil,
	---@type number
	["frame_204/duration"] = nil,
	---@type Texture2D
	["frame_205/texture"] = nil,
	---@type number
	["frame_205/duration"] = nil,
	---@type Texture2D
	["frame_206/texture"] = nil,
	---@type number
	["frame_206/duration"] = nil,
	---@type Texture2D
	["frame_207/texture"] = nil,
	---@type number
	["frame_207/duration"] = nil,
	---@type Texture2D
	["frame_208/texture"] = nil,
	---@type number
	["frame_208/duration"] = nil,
	---@type Texture2D
	["frame_209/texture"] = nil,
	---@type number
	["frame_209/duration"] = nil,
	---@type Texture2D
	["frame_210/texture"] = nil,
	---@type number
	["frame_210/duration"] = nil,
	---@type Texture2D
	["frame_211/texture"] = nil,
	---@type number
	["frame_211/duration"] = nil,
	---@type Texture2D
	["frame_212/texture"] = nil,
	---@type number
	["frame_212/duration"] = nil,
	---@type Texture2D
	["frame_213/texture"] = nil,
	---@type number
	["frame_213/duration"] = nil,
	---@type Texture2D
	["frame_214/texture"] = nil,
	---@type number
	["frame_214/duration"] = nil,
	---@type Texture2D
	["frame_215/texture"] = nil,
	---@type number
	["frame_215/duration"] = nil,
	---@type Texture2D
	["frame_216/texture"] = nil,
	---@type number
	["frame_216/duration"] = nil,
	---@type Texture2D
	["frame_217/texture"] = nil,
	---@type number
	["frame_217/duration"] = nil,
	---@type Texture2D
	["frame_218/texture"] = nil,
	---@type number
	["frame_218/duration"] = nil,
	---@type Texture2D
	["frame_219/texture"] = nil,
	---@type number
	["frame_219/duration"] = nil,
	---@type Texture2D
	["frame_220/texture"] = nil,
	---@type number
	["frame_220/duration"] = nil,
	---@type Texture2D
	["frame_221/texture"] = nil,
	---@type number
	["frame_221/duration"] = nil,
	---@type Texture2D
	["frame_222/texture"] = nil,
	---@type number
	["frame_222/duration"] = nil,
	---@type Texture2D
	["frame_223/texture"] = nil,
	---@type number
	["frame_223/duration"] = nil,
	---@type Texture2D
	["frame_224/texture"] = nil,
	---@type number
	["frame_224/duration"] = nil,
	---@type Texture2D
	["frame_225/texture"] = nil,
	---@type number
	["frame_225/duration"] = nil,
	---@type Texture2D
	["frame_226/texture"] = nil,
	---@type number
	["frame_226/duration"] = nil,
	---@type Texture2D
	["frame_227/texture"] = nil,
	---@type number
	["frame_227/duration"] = nil,
	---@type Texture2D
	["frame_228/texture"] = nil,
	---@type number
	["frame_228/duration"] = nil,
	---@type Texture2D
	["frame_229/texture"] = nil,
	---@type number
	["frame_229/duration"] = nil,
	---@type Texture2D
	["frame_230/texture"] = nil,
	---@type number
	["frame_230/duration"] = nil,
	---@type Texture2D
	["frame_231/texture"] = nil,
	---@type number
	["frame_231/duration"] = nil,
	---@type Texture2D
	["frame_232/texture"] = nil,
	---@type number
	["frame_232/duration"] = nil,
	---@type Texture2D
	["frame_233/texture"] = nil,
	---@type number
	["frame_233/duration"] = nil,
	---@type Texture2D
	["frame_234/texture"] = nil,
	---@type number
	["frame_234/duration"] = nil,
	---@type Texture2D
	["frame_235/texture"] = nil,
	---@type number
	["frame_235/duration"] = nil,
	---@type Texture2D
	["frame_236/texture"] = nil,
	---@type number
	["frame_236/duration"] = nil,
	---@type Texture2D
	["frame_237/texture"] = nil,
	---@type number
	["frame_237/duration"] = nil,
	---@type Texture2D
	["frame_238/texture"] = nil,
	---@type number
	["frame_238/duration"] = nil,
	---@type Texture2D
	["frame_239/texture"] = nil,
	---@type number
	["frame_239/duration"] = nil,
	---@type Texture2D
	["frame_240/texture"] = nil,
	---@type number
	["frame_240/duration"] = nil,
	---@type Texture2D
	["frame_241/texture"] = nil,
	---@type number
	["frame_241/duration"] = nil,
	---@type Texture2D
	["frame_242/texture"] = nil,
	---@type number
	["frame_242/duration"] = nil,
	---@type Texture2D
	["frame_243/texture"] = nil,
	---@type number
	["frame_243/duration"] = nil,
	---@type Texture2D
	["frame_244/texture"] = nil,
	---@type number
	["frame_244/duration"] = nil,
	---@type Texture2D
	["frame_245/texture"] = nil,
	---@type number
	["frame_245/duration"] = nil,
	---@type Texture2D
	["frame_246/texture"] = nil,
	---@type number
	["frame_246/duration"] = nil,
	---@type Texture2D
	["frame_247/texture"] = nil,
	---@type number
	["frame_247/duration"] = nil,
	---@type Texture2D
	["frame_248/texture"] = nil,
	---@type number
	["frame_248/duration"] = nil,
	---@type Texture2D
	["frame_249/texture"] = nil,
	---@type number
	["frame_249/duration"] = nil,
	---@type Texture2D
	["frame_250/texture"] = nil,
	---@type number
	["frame_250/duration"] = nil,
	---@type Texture2D
	["frame_251/texture"] = nil,
	---@type number
	["frame_251/duration"] = nil,
	---@type Texture2D
	["frame_252/texture"] = nil,
	---@type number
	["frame_252/duration"] = nil,
	---@type Texture2D
	["frame_253/texture"] = nil,
	---@type number
	["frame_253/duration"] = nil,
	---@type Texture2D
	["frame_254/texture"] = nil,
	---@type number
	["frame_254/duration"] = nil,
	---@type Texture2D
	["frame_255/texture"] = nil,
	---@type number
	["frame_255/duration"] = nil,
}

---@param frames integer
function AnimatedTexture.set_frames(frames) end

---@return integer
function AnimatedTexture.get_frames() end

---@param frame integer
function AnimatedTexture.set_current_frame(frame) end

---@return integer
function AnimatedTexture.get_current_frame() end

---@param pause boolean
function AnimatedTexture.set_pause(pause) end

---@return boolean
function AnimatedTexture.get_pause() end

---@param one_shot boolean
function AnimatedTexture.set_one_shot(one_shot) end

---@return boolean
function AnimatedTexture.get_one_shot() end

---@param scale number
function AnimatedTexture.set_speed_scale(scale) end

---@return number
function AnimatedTexture.get_speed_scale() end

---@param frame integer
---@param texture Texture2D
function AnimatedTexture.set_frame_texture(frame, texture) end

---@param frame integer
---@return Texture2D
function AnimatedTexture.get_frame_texture(frame) end

---@param frame integer
---@param duration number
function AnimatedTexture.set_frame_duration(frame, duration) end

---@param frame integer
---@return number
function AnimatedTexture.get_frame_duration(frame) end
