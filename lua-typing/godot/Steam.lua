---@meta _
-- Generated API for game version 0.10.0

---@class Steam : Object
---@field browser_handle integer
---@field current_clan_id integer
---@field inventory_handle integer
---@field inventory_update_handle integer
---@field current_steam_id integer
---@field leaderboard_details_max integer
---@field leaderboard_entries_array Array<any>
---@field leaderboard_handle integer
---@field current_app_id integer
local Steam = {}

---@return string
function Steam.get_godotsteam_version() end

---@param steam_id integer
---@return integer
function Steam.getSteamID32(steam_id) end

---@param steam_id integer
---@return boolean
function Steam.isAnonAccount(steam_id) end

---@param steam_id integer
---@return boolean
function Steam.isAnonUserAccount(steam_id) end

---@param steam_id integer
---@return boolean
function Steam.isChatAccount(steam_id) end

---@param steam_id integer
---@return boolean
function Steam.isClanAccount(steam_id) end

---@param steam_id integer
---@return boolean
function Steam.isConsoleUserAccount(steam_id) end

---@param steam_id integer
---@return boolean
function Steam.isIndividualAccount(steam_id) end

---@param steam_id integer
---@return boolean
function Steam.isLobby(steam_id) end

---@return boolean
function Steam.isSteamRunning() end

function Steam.run_callbacks() end

---@param app_id integer
---@return boolean
function Steam.restartAppIfNecessary(app_id) end

---@param retrieve_stats boolean?  # Default = false
---@param app_id integer?  # Default = 0
---@return table<any,any>
function Steam.steamInit(retrieve_stats, app_id) end

---@param retrieve_stats boolean?  # Default = false
---@param app_id integer?  # Default = 0
---@return table<any,any>
function Steam.steamInitEx(retrieve_stats, app_id) end

function Steam.steamShutdown() end

---@return integer
function Steam.get_browser_handle() end

---@return integer
function Steam.get_current_app_id() end

---@return integer
function Steam.get_current_clan_id() end

---@return integer
function Steam.get_current_steam_id() end

---@return integer
function Steam.get_inventory_handle() end

---@return integer
function Steam.get_inventory_update_handle() end

---@return integer
function Steam.get_leaderboard_handle() end

---@return integer
function Steam.get_leaderboard_details_max() end

---@return Array<any>
function Steam.get_leaderboard_entries() end

---@return integer
function Steam.get_server_list_request() end

---@param new_browser_handle integer
function Steam.set_browser_handle(new_browser_handle) end

---@param new_current_app_id integer
function Steam.set_current_app_id(new_current_app_id) end

---@param new_current_clan_id integer
function Steam.set_current_clan_id(new_current_clan_id) end

---@param new_current_steam_id integer
function Steam.set_current_steam_id(new_current_steam_id) end

---@param new_inventory_handle integer
function Steam.set_inventory_handle(new_inventory_handle) end

---@param new_inventory_update_handle integer
function Steam.set_inventory_update_handle(new_inventory_update_handle) end

---@param new_leaderboard_details_max integer
function Steam.set_leaderboard_details_max(new_leaderboard_details_max) end

---@param new_leaderboard_entries Array<any>
function Steam.set_leaderboard_entries(new_leaderboard_entries) end

---@param new_leaderboard_handle integer
function Steam.set_leaderboard_handle(new_leaderboard_handle) end

---@param new_server_list_request integer
function Steam.set_server_list_request(new_server_list_request) end

---@return integer
function Steam.getAppBuildId() end

---@param app_id integer
---@return table<any,any>
function Steam.getAppInstallDir(app_id) end

---@return integer
function Steam.getAppOwner() end

---@return string
function Steam.getAvailableGameLanguages() end

---@return table<any,any>
function Steam.getBetaInfo() end

---@return string
function Steam.getCurrentBetaName() end

---@return string
function Steam.getCurrentGameLanguage() end

---@return integer
function Steam.getDLCCount() end

---@return Array<any>
function Steam.getDLCData() end

---@param this_dlc_index integer
---@return table<any,any>
function Steam.getDLCDataByIndex(this_dlc_index) end

---@param dlc_id integer
---@return table<any,any>
function Steam.getDLCDownloadProgress(dlc_id) end

---@param app_id integer
---@return integer
function Steam.getEarliestPurchaseUnixTime(app_id) end

---@param filename string
function Steam.getFileDetails(filename) end

---@param app_id integer
---@return Array<any>
function Steam.getInstalledDepots(app_id) end

---@return string
function Steam.getLaunchCommandLine() end

---@param key string
---@return string
function Steam.getLaunchQueryParam(key) end

---@return table<any,any>
function Steam.getNumBetas() end

---@param dlc_id integer
function Steam.installDLC(dlc_id) end

---@param app_id integer
---@return boolean
function Steam.isAppInstalled(app_id) end

---@return boolean
function Steam.isCybercafe() end

---@param dlc_id integer
---@return boolean
function Steam.isDLCInstalled(dlc_id) end

---@return boolean
function Steam.isLowViolence() end

---@return boolean
function Steam.isSubscribed() end

---@param app_id integer
---@return boolean
function Steam.isSubscribedApp(app_id) end

---@return boolean
function Steam.isSubscribedFromFamilySharing() end

---@return boolean
function Steam.isSubscribedFromFreeWeekend() end

---@return table<any,any>
function Steam.isTimedTrial() end

---@return boolean
function Steam.isVACBanned() end

---@param missing_files_only boolean
---@return boolean
function Steam.markContentCorrupt(missing_files_only) end

---@param beta_name string
---@return boolean
function Steam.setActiveBeta(beta_name) end

---@param app_id integer
---@return boolean
function Steam.setDLCContext(app_id) end

---@param dlc_id integer
function Steam.uninstallDLC(dlc_id) end

---@param type string?  # Default = 
function Steam.activateGameOverlay(type) end

---@param steam_id integer
function Steam.activateGameOverlayInviteDialog(steam_id) end

---@param connect_string string
function Steam.activateGameOverlayInviteDialogConnectString(connect_string) end

---@param app_id integer?  # Default = 0
function Steam.activateGameOverlayToStore(app_id) end

---@param type string?  # Default = 
---@param steam_id integer?  # Default = 0
function Steam.activateGameOverlayToUser(type, steam_id) end

---@param url string
function Steam.activateGameOverlayToWebPage(url) end

function Steam.clearRichPresence() end

---@param chat_id integer
---@return boolean
function Steam.closeClanChatWindowInSteam(chat_id) end

---@param chat_id integer
---@param clans_to_request integer
function Steam.downloadClanActivityCounts(chat_id, clans_to_request) end

---@param start_index integer
function Steam.enumerateFollowingList(start_index) end

---@param clan_id integer
---@param user integer
---@return integer
function Steam.getChatMemberByIndex(clan_id, user) end

---@param clan_id integer
---@return table<any,any>
function Steam.getClanActivityCounts(clan_id) end

---@param clan_index integer
---@return integer
function Steam.getClanByIndex(clan_index) end

---@param clan_id integer
---@return integer
function Steam.getClanChatMemberCount(clan_id) end

---@param chat_id integer
---@param message integer
---@return table<any,any>
function Steam.getClanChatMessage(chat_id, message) end

---@return integer
function Steam.getClanCount() end

---@param clan_id integer
---@return string
function Steam.getClanName(clan_id) end

---@param clan_id integer
---@param officer integer
---@return integer
function Steam.getClanOfficerByIndex(clan_id, officer) end

---@param clan_id integer
---@return integer
function Steam.getClanOfficerCount(clan_id) end

---@param clan_id integer
---@return integer
function Steam.getClanOwner(clan_id) end

---@param clan_id integer
---@return string
function Steam.getClanTag(clan_id) end

---@param friend_number integer
---@return integer
function Steam.getCoplayFriend(friend_number) end

---@return integer
function Steam.getCoplayFriendCount() end

---@param steam_id integer
function Steam.getFollowerCount(steam_id) end

---@param friend_number integer
---@param friend_flags FriendFlags
---@return integer
function Steam.getFriendByIndex(friend_number, friend_flags) end

---@param friend_id integer
---@return integer
function Steam.getFriendCoplayGame(friend_id) end

---@param friend_id integer
---@return integer
function Steam.getFriendCoplayTime(friend_id) end

---@param friend_flags FriendFlags?  # Default = 65535
---@return integer
function Steam.getFriendCount(friend_flags) end

---@param source_id integer
---@return integer
function Steam.getFriendCountFromSource(source_id) end

---@param source_id integer
---@param friend_number integer
---@return integer
function Steam.getFriendFromSourceByIndex(source_id, friend_number) end

---@param steam_id integer
---@return table<any,any>
function Steam.getFriendGamePlayed(steam_id) end

---@param friend_id integer
---@param message integer
---@return table<any,any>
function Steam.getFriendMessage(friend_id, message) end

---@param steam_id integer
---@return string
function Steam.getFriendPersonaName(steam_id) end

---@param steam_id integer
---@param name_history integer
---@return string
function Steam.getFriendPersonaNameHistory(steam_id, name_history) end

---@param steam_id integer
---@return PersonaState
function Steam.getFriendPersonaState(steam_id) end

---@param steam_id integer
---@return FriendRelationship
function Steam.getFriendRelationship(steam_id) end

---@param friend_id integer
---@param key string
---@return string
function Steam.getFriendRichPresence(friend_id, key) end

---@param friend_id integer
---@return integer
function Steam.getFriendRichPresenceKeyCount(friend_id) end

---@param friend_id integer
---@param key integer
---@return string
function Steam.getFriendRichPresenceKeyByIndex(friend_id, key) end

---@return integer
function Steam.getFriendsGroupCount() end

---@param friend_group integer
---@return integer
function Steam.getFriendsGroupIDByIndex(friend_group) end

---@param friend_group integer
---@return integer
function Steam.getFriendsGroupMembersCount(friend_group) end

---@param friend_group integer
---@param member_count integer
---@return Array<any>
function Steam.getFriendsGroupMembersList(friend_group, member_count) end

---@param friend_group integer
---@return string
function Steam.getFriendsGroupName(friend_group) end

---@param steam_id integer
---@return integer
function Steam.getFriendSteamLevel(steam_id) end

---@param steam_id integer
---@return integer
function Steam.getLargeFriendAvatar(steam_id) end

---@param steam_id integer
---@return integer
function Steam.getMediumFriendAvatar(steam_id) end

---@return string
function Steam.getPersonaName() end

---@return PersonaState
function Steam.getPersonaState() end

---@param size integer?  # Default = 2
---@param steam_id integer?  # Default = 0
function Steam.getPlayerAvatar(size, steam_id) end

---@param steam_id integer
---@return string
function Steam.getPlayerNickname(steam_id) end

---@param steam_id integer
---@param item_type CommunityProfileItemType
---@param item_property CommunityProfileItemProperty
---@return string
function Steam.getProfileItemPropertyString(steam_id, item_type, item_property) end

---@param steam_id integer
---@param item_type CommunityProfileItemType
---@param item_property CommunityProfileItemProperty
---@return integer
function Steam.getProfileItemPropertyInt(steam_id, item_type, item_property) end

---@return Array<any>
function Steam.getRecentPlayers() end

---@param steam_id integer
---@return integer
function Steam.getSmallFriendAvatar(steam_id) end

---@return Array<any>
function Steam.getUserFriendsGroups() end

---@return integer
function Steam.getUserRestrictions() end

---@return Array<any>
function Steam.getUserSteamFriends() end

---@return Array<any>
function Steam.getUserSteamGroups() end

---@param steam_id integer
---@param friend_flags CommunityProfileItemType
---@return boolean
function Steam.hasEquippedProfileItem(steam_id, friend_flags) end

---@param steam_id integer
---@param friend_flags FriendFlags
---@return boolean
function Steam.hasFriend(steam_id, friend_flags) end

---@param friend_id integer
---@param connect_string string
---@return boolean
function Steam.inviteUserToGame(friend_id, connect_string) end

---@param chat_id integer
---@param steam_id integer
---@return boolean
function Steam.isClanChatAdmin(chat_id, steam_id) end

---@param clan_id integer
---@return boolean
function Steam.isClanPublic(clan_id) end

---@param clan_id integer
---@return boolean
function Steam.isClanOfficialGameGroup(clan_id) end

---@param chat_id integer
---@return boolean
function Steam.isClanChatWindowOpenInSteam(chat_id) end

---@param steam_id integer
function Steam.isFollowing(steam_id) end

---@param steam_id integer
---@param source_id integer
---@return boolean
function Steam.isUserInSource(steam_id, source_id) end

---@param clan_id integer
function Steam.joinClanChatRoom(clan_id) end

---@param clan_id integer
---@return boolean
function Steam.leaveClanChatRoom(clan_id) end

---@param chat_id integer
---@return boolean
function Steam.openClanChatWindowInSteam(chat_id) end

---@param protocol string
---@return boolean
function Steam.registerProtocolInOverlayBrowser(protocol) end

---@param steam_id integer
---@param message string
---@return boolean
function Steam.replyToFriendMessage(steam_id, message) end

---@param clan_id integer
function Steam.requestClanOfficerList(clan_id) end

---@param steam_id integer
function Steam.requestEquippedProfileItems(steam_id) end

---@param friend_id integer
function Steam.requestFriendRichPresence(friend_id) end

---@param steam_id integer
---@param require_name_only boolean
---@return boolean
function Steam.requestUserInformation(steam_id, require_name_only) end

---@param chat_id integer
---@param text string
---@return boolean
function Steam.sendClanChatMessage(chat_id, text) end

---@param steam_id integer
---@param speaking boolean
function Steam.setInGameVoiceSpeaking(steam_id, speaking) end

---@param intercept boolean
---@return boolean
function Steam.setListenForFriendsMessages(intercept) end

---@param name string
function Steam.setPersonaName(name) end

---@param steam_id integer
function Steam.setPlayedWith(steam_id) end

---@param key string
---@param value string
---@return boolean
function Steam.setRichPresence(key, value) end

---@param key string
---@param values string
---@return integer
function Steam.addGameSearchParams(key, values) end

---@param lobby_id integer
---@param player_min integer
---@param player_max integer
---@return integer
function Steam.searchForGameWithLobby(lobby_id, player_min, player_max) end

---@param player_min integer
---@param player_max integer
---@return integer
function Steam.searchForGameSolo(player_min, player_max) end

---@return integer
function Steam.acceptGame() end

---@return integer
function Steam.declineGame() end

---@param host_id integer
---@return string
function Steam.retrieveConnectionDetails(host_id) end

---@return integer
function Steam.endGameSearch() end

---@param key string
---@param value string
---@return integer
function Steam.setGameHostParams(key, value) end

---@param details string
---@param connection_details integer
---@return integer
function Steam.setConnectionDetails(details, connection_details) end

---@param player_min integer
---@param player_max integer
---@param max_team_size integer
---@return integer
function Steam.requestPlayersForGame(player_min, player_max, max_team_size) end

---@param game_id integer
---@return integer
function Steam.hostConfirmGameStart(game_id) end

---@return integer
function Steam.cancelRequestPlayersForGame() end

---@param game_id integer
---@param player_id integer
---@param player_result PlayerResult
---@return integer
function Steam.submitPlayerResult(game_id, player_id, player_result) end

---@param game_id integer
---@return integer
function Steam.endGame(game_id) end

---@param key string
---@param value string
---@param this_handle integer?  # Default = 0
function Steam.addHeader(key, value, this_handle) end

---@param allowed boolean
---@param this_handle integer?  # Default = 0
function Steam.allowStartRequest(allowed, this_handle) end

---@param this_handle integer?  # Default = 0
function Steam.copyToClipboard(this_handle) end

---@param user_agent string?  # Default = 
---@param user_css string?  # Default = 
function Steam.createBrowser(user_agent, user_css) end

---@param script string
---@param this_handle integer?  # Default = 0
function Steam.executeJavascript(script, this_handle) end

---@param search string
---@param currently_in_find boolean
---@param reverse boolean
---@param this_handle integer?  # Default = 0
function Steam.find(search, currently_in_find, reverse, this_handle) end

---@param x integer
---@param y integer
---@param this_handle integer?  # Default = 0
function Steam.getLinkAtPosition(x, y, this_handle) end

---@param this_handle integer?  # Default = 0
function Steam.goBack(this_handle) end

---@param this_handle integer?  # Default = 0
function Steam.goForward(this_handle) end

---@return boolean
function Steam.htmlInit() end

---@param result boolean
---@param this_handle integer?  # Default = 0
function Steam.jsDialogResponse(result, this_handle) end

---@param unicode_char integer
---@param key_modifiers HTMLKeyModifiers
---@param this_handle integer?  # Default = 0
function Steam.keyChar(unicode_char, key_modifiers, this_handle) end

---@param native_key_code integer
---@param key_modifiers HTMLKeyModifiers
---@param this_handle integer?  # Default = 0
function Steam.keyDown(native_key_code, key_modifiers, this_handle) end

---@param native_key_code integer
---@param key_modifiers HTMLKeyModifiers
---@param this_handle integer?  # Default = 0
function Steam.keyUp(native_key_code, key_modifiers, this_handle) end

---@param url string
---@param post_data string
---@param this_handle integer?  # Default = 0
function Steam.loadURL(url, post_data, this_handle) end

---@param mouse_button HTMLMouseButton
---@param this_handle integer?  # Default = 0
function Steam.mouseDoubleClick(mouse_button, this_handle) end

---@param mouse_button HTMLMouseButton
---@param this_handle integer?  # Default = 0
function Steam.mouseDown(mouse_button, this_handle) end

---@param x integer
---@param y integer
---@param this_handle integer?  # Default = 0
function Steam.mouseMove(x, y, this_handle) end

---@param mouse_button HTMLMouseButton
---@param this_handle integer?  # Default = 0
function Steam.mouseUp(mouse_button, this_handle) end

---@param delta integer
---@param this_handle integer?  # Default = 0
function Steam.mouseWheel(delta, this_handle) end

---@param this_handle integer?  # Default = 0
function Steam.pasteFromClipboard(this_handle) end

---@param this_handle integer?  # Default = 0
function Steam.reload(this_handle) end

---@param this_handle integer?  # Default = 0
function Steam.removeBrowser(this_handle) end

---@param background_mode boolean
---@param this_handle integer?  # Default = 0
function Steam.setBackgroundMode(background_mode, this_handle) end

---@param hostname string
---@param key string
---@param value string
---@param path string
---@param expires integer
---@param secure boolean
---@param http_only boolean
function Steam.setCookie(hostname, key, value, path, expires, secure, http_only) end

---@param absolute_pixel_scroll integer
---@param this_handle integer?  # Default = 0
function Steam.setHorizontalScroll(absolute_pixel_scroll, this_handle) end

---@param has_key_focus boolean
---@param this_handle integer?  # Default = 0
function Steam.setKeyFocus(has_key_focus, this_handle) end

---@param zoom number
---@param point_x integer
---@param point_y integer
---@param this_handle integer?  # Default = 0
function Steam.setPageScaleFactor(zoom, point_x, point_y, this_handle) end

---@param width integer
---@param height integer
---@param this_handle integer?  # Default = 0
function Steam.setSize(width, height, this_handle) end

---@param absolute_pixel_scroll integer
---@param this_handle integer?  # Default = 0
function Steam.setVerticalScroll(absolute_pixel_scroll, this_handle) end

---@return boolean
function Steam.htmlShutdown() end

---@param this_handle integer?  # Default = 0
function Steam.stopFind(this_handle) end

---@param this_handle integer?  # Default = 0
function Steam.stopLoad(this_handle) end

---@param this_handle integer?  # Default = 0
function Steam.viewSource(this_handle) end

---@param allow_response_to_modify boolean
---@return integer
function Steam.createCookieContainer(allow_response_to_modify) end

---@param request_method HTTPMethod
---@param absolute_url string
---@return integer
function Steam.createHTTPRequest(request_method, absolute_url) end

---@param request_handle integer
---@return boolean
function Steam.deferHTTPRequest(request_handle) end

---@param request_handle integer
---@return number
function Steam.getHTTPDownloadProgressPct(request_handle) end

---@param request_handle integer
---@return boolean
function Steam.getHTTPRequestWasTimedOut(request_handle) end

---@param request_handle integer
---@param buffer_size integer
---@return PackedByteArray
function Steam.getHTTPResponseBodyData(request_handle, buffer_size) end

---@param request_handle integer
---@return integer
function Steam.getHTTPResponseBodySize(request_handle) end

---@param request_handle integer
---@param header_name string
---@return integer
function Steam.getHTTPResponseHeaderSize(request_handle, header_name) end

---@param request_handle integer
---@param header_name string
---@param buffer_size integer
---@return PackedByteArray
function Steam.getHTTPResponseHeaderValue(request_handle, header_name, buffer_size) end

---@param request_handle integer
---@param offset integer
---@param buffer_size integer
---@return PackedByteArray
function Steam.getHTTPStreamingResponseBodyData(request_handle, offset, buffer_size) end

---@param request_handle integer
---@return boolean
function Steam.prioritizeHTTPRequest(request_handle) end

---@param cookie_handle integer
---@return boolean
function Steam.releaseCookieContainer(cookie_handle) end

---@param request_handle integer
---@return boolean
function Steam.releaseHTTPRequest(request_handle) end

---@param request_handle integer
---@return boolean
function Steam.sendHTTPRequest(request_handle) end

---@param request_handle integer
---@return boolean
function Steam.sendHTTPRequestAndStreamResponse(request_handle) end

---@param cookie_handle integer
---@param host string
---@param url string
---@param cookie string
---@return boolean
function Steam.setHTTPCookie(cookie_handle, host, url, cookie) end

---@param request_handle integer
---@param milliseconds integer
---@return boolean
function Steam.setHTTPRequestAbsoluteTimeoutMS(request_handle, milliseconds) end

---@param request_handle integer
---@param context_value integer
---@return boolean
function Steam.setHTTPRequestContextValue(request_handle, context_value) end

---@param request_handle integer
---@param cookie_handle integer
---@return boolean
function Steam.setHTTPRequestCookieContainer(request_handle, cookie_handle) end

---@param request_handle integer
---@param name string
---@param value string
---@return boolean
function Steam.setHTTPRequestGetOrPostParameter(request_handle, name, value) end

---@param request_handle integer
---@param header_name string
---@param header_value string
---@return boolean
function Steam.setHTTPRequestHeaderValue(request_handle, header_name, header_value) end

---@param request_handle integer
---@param timeout_seconds integer
---@return boolean
function Steam.setHTTPRequestNetworkActivityTimeout(request_handle, timeout_seconds) end

---@param request_handle integer
---@param content_type string
---@param body string
---@return boolean
function Steam.setHTTPRequestRawPostBody(request_handle, content_type, body) end

---@param request_handle integer
---@param require_verified_certificate boolean
---@return boolean
function Steam.setHTTPRequestRequiresVerifiedCertificate(request_handle, require_verified_certificate) end

---@param request_handle integer
---@param user_agent_info string
---@return boolean
function Steam.setHTTPRequestUserAgentInfo(request_handle, user_agent_info) end

---@param input_handle integer
---@param action_set_handle integer
function Steam.activateActionSet(input_handle, action_set_handle) end

---@param input_handle integer
---@param action_set_layer_handle integer
function Steam.activateActionSetLayer(input_handle, action_set_layer_handle) end

---@param input_handle integer
---@param action_set_handle integer
function Steam.deactivateActionSetLayer(input_handle, action_set_handle) end

---@param input_handle integer
function Steam.deactivateAllActionSetLayers(input_handle) end

---@param action_set_name string
---@return integer
function Steam.getActionSetHandle(action_set_name) end

---@param input_handle integer
---@param origin integer
---@return InputActionOrigin
function Steam.getActionOriginFromXboxOrigin(input_handle, origin) end

---@param input_handle integer
---@return Array<any>
function Steam.getActiveActionSetLayers(input_handle) end

---@param input_handle integer
---@param analog_action_handle integer
---@return table<any,any>
function Steam.getAnalogActionData(input_handle, analog_action_handle) end

---@param action_name string
---@return integer
function Steam.getAnalogActionHandle(action_name) end

---@param input_handle integer
---@param action_set_handle integer
---@param analog_action_handle integer
---@return Array<any>
function Steam.getAnalogActionOrigins(input_handle, action_set_handle, analog_action_handle) end

---@return Array<any>
function Steam.getConnectedControllers() end

---@param index integer
---@return integer
function Steam.getControllerForGamepadIndex(index) end

---@param input_handle integer
---@return integer
function Steam.getCurrentActionSet(input_handle) end

---@param input_handle integer
---@return Array<any>
function Steam.getDeviceBindingRevision(input_handle) end

---@param input_handle integer
---@param digital_action_handle integer
---@return table<any,any>
function Steam.getDigitalActionData(input_handle, digital_action_handle) end

---@param action_name string
---@return integer
function Steam.getDigitalActionHandle(action_name) end

---@param input_handle integer
---@param action_set_handle integer
---@param digital_action_handle integer
---@return Array<any>
function Steam.getDigitalActionOrigins(input_handle, action_set_handle, digital_action_handle) end

---@param input_handle integer
---@return integer
function Steam.getGamepadIndexForController(input_handle) end

---@param origin InputActionOrigin
---@return string
function Steam.getGlyphForActionOrigin(origin) end

---@param input_handle integer
---@return InputType
function Steam.getInputTypeForHandle(input_handle) end

---@param input_handle integer
---@return table<any,any>
function Steam.getMotionData(input_handle) end

---@param input_handle integer
---@return integer
function Steam.getRemotePlaySessionID(input_handle) end

---@param origin InputActionOrigin
---@return string
function Steam.getStringForActionOrigin(origin) end

---@param explicitly_call_runframe boolean?  # Default = false
---@return boolean
function Steam.inputInit(explicitly_call_runframe) end

---@return boolean
function Steam.inputShutdown() end

---@param reserved_value boolean?  # Default = true
function Steam.runFrame(reserved_value) end

---@param input_handle integer
---@param color_r integer
---@param color_g integer
---@param color_b integer
---@param flags integer
function Steam.setLEDColor(input_handle, color_r, color_g, color_b, flags) end

---@param input_handle integer
---@return boolean
function Steam.showBindingPanel(input_handle) end

---@param input_handle integer
---@param action integer
function Steam.stopAnalogActionMomentum(input_handle, action) end

---@param destination_input InputType
---@param source_origin InputActionOrigin
---@return integer
function Steam.translateActionOrigin(destination_input, source_origin) end

---@param input_handle integer
---@param target_pad integer
---@param duration integer
function Steam.triggerHapticPulse(input_handle, target_pad, duration) end

---@param input_handle integer
---@param target_pad integer
---@param duration integer
---@param offset integer
---@param repeat_ integer
---@param flags integer
function Steam.triggerRepeatedHapticPulse(input_handle, target_pad, duration, offset, repeat_, flags) end

---@param input_handle integer
---@param left_speed integer
---@param right_speed integer
function Steam.triggerVibration(input_handle, left_speed, right_speed) end

---@param manifest_path string
---@return boolean
function Steam.setInputActionManifestFilePath(manifest_path) end

---@param input_handle integer
---@param parameters integer
---@param trigger_mask integer
---@param effect_mode SCEPadTriggerEffectMode
---@param position integer
---@param amplitude integer
---@param frequency integer
function Steam.setDualSenseTriggerEffect(input_handle, parameters, trigger_mask, effect_mode, position, amplitude, frequency) end

---@param wait_forever boolean
---@param timeout integer
---@return boolean
function Steam.waitForData(wait_forever, timeout) end

---@return boolean
function Steam.newDataAvailable() end

function Steam.enableDeviceCallbacks() end

function Steam.enableActionEventCallbacks() end

---@param origin InputActionOrigin
---@param size InputGlyphSize
---@param flags integer
---@return string
function Steam.getGlyphPNGForActionOrigin(origin, size, flags) end

---@param origin InputActionOrigin
---@param flags integer
---@return string
function Steam.getGlyphSVGForActionOrigin(origin, flags) end

---@param input_handle integer
---@param left_speed integer
---@param right_speed integer
---@param left_trigger_speed integer
---@param right_trigger_speed integer
function Steam.triggerVibrationExtended(input_handle, left_speed, right_speed, left_trigger_speed, right_trigger_speed) end

---@param input_handle integer
---@param haptic_location integer
---@param intensity integer
---@param gain_db string
---@param other_intensity integer
---@param other_gain_db string
function Steam.triggerSimpleHapticEvent(input_handle, haptic_location, intensity, gain_db, other_intensity, other_gain_db) end

---@param origin integer
---@return string
function Steam.getStringForXboxOrigin(origin) end

---@param origin integer
---@return string
function Steam.getGlyphForXboxOrigin(origin) end

---@return integer
function Steam.getSessionInputConfigurationSettings() end

---@param action_handle integer
---@return string
function Steam.getStringForDigitalActionName(action_handle) end

---@param action_handle integer
---@return string
function Steam.getStringForAnalogActionName(action_handle) end

---@param item integer
---@return integer
function Steam.addPromoItem(item) end

---@param items PackedInt64Array
---@return integer
function Steam.addPromoItems(items) end

---@param steam_id_expected integer
---@param this_inventory_handle integer?  # Default = 0
---@return boolean
function Steam.checkResultSteamID(steam_id_expected, this_inventory_handle) end

---@param item_consume integer
---@param quantity integer
---@return integer
function Steam.consumeItem(item_consume, quantity) end

---@param buffer PackedByteArray
---@return integer
function Steam.deserializeResult(buffer) end

---@param this_inventory_handle integer?  # Default = 0
function Steam.destroyResult(this_inventory_handle) end

---@param output_items PackedInt64Array
---@param output_quantity PackedInt32Array
---@param input_items PackedInt64Array
---@param input_quantity PackedInt32Array
---@return integer
function Steam.exchangeItems(output_items, output_quantity, input_items, input_quantity) end

---@param items PackedInt64Array
---@param quantity PackedInt32Array
---@return integer
function Steam.generateItems(items, quantity) end

---@return integer
function Steam.getAllItems() end

---@param definition integer
---@param name string
---@return string
function Steam.getItemDefinitionProperty(definition, name) end

---@param id_array PackedInt64Array
---@return integer
function Steam.getItemsByID(id_array) end

---@param definition integer
---@return table<any,any>
function Steam.getItemPrice(definition) end

---@return Array<any>
function Steam.getItemsWithPrices() end

---@param index integer
---@param name string
---@param this_inventory_handle integer?  # Default = 0
---@return string
function Steam.getResultItemProperty(index, name, this_inventory_handle) end

---@param this_inventory_handle integer?  # Default = 0
---@return Array<any>
function Steam.getResultItems(this_inventory_handle) end

---@param this_inventory_handle integer?  # Default = 0
---@return Result
function Steam.getResultStatus(this_inventory_handle) end

---@param this_inventory_handle integer?  # Default = 0
---@return integer
function Steam.getResultTimestamp(this_inventory_handle) end

---@return integer
function Steam.grantPromoItems() end

---@return boolean
function Steam.loadItemDefinitions() end

---@param steam_id integer
function Steam.requestEligiblePromoItemDefinitionsIDs(steam_id) end

function Steam.requestPrices() end

---@param this_inventory_handle integer?  # Default = 0
---@return PackedByteArray
function Steam.serializeResult(this_inventory_handle) end

---@param items PackedInt64Array
---@param quantity PackedInt32Array
function Steam.startPurchase(items, quantity) end

---@param item_id integer
---@param quantity integer
---@param item_destination integer
---@param split boolean
---@return integer
function Steam.transferItemQuantity(item_id, quantity, item_destination, split) end

---@param definition integer
---@return integer
function Steam.triggerItemDrop(definition) end

function Steam.startUpdateProperties() end

---@param this_inventory_update_handle integer?  # Default = 0
---@return integer
function Steam.submitUpdateProperties(this_inventory_update_handle) end

---@param item_id integer
---@param name string
---@param this_inventory_update_handle integer?  # Default = 0
---@return boolean
function Steam.removeProperty(item_id, name, this_inventory_update_handle) end

---@param item_id integer
---@param name string
---@param value string
---@param this_inventory_update_handle integer?  # Default = 0
---@return boolean
function Steam.setPropertyString(item_id, name, value, this_inventory_update_handle) end

---@param item_id integer
---@param name string
---@param value boolean
---@param this_inventory_update_handle integer?  # Default = 0
---@return boolean
function Steam.setPropertyBool(item_id, name, value, this_inventory_update_handle) end

---@param item_id integer
---@param name string
---@param value integer
---@param this_inventory_update_handle integer?  # Default = 0
---@return boolean
function Steam.setPropertyInt(item_id, name, value, this_inventory_update_handle) end

---@param item_id integer
---@param name string
---@param value number
---@param this_inventory_update_handle integer?  # Default = 0
---@return boolean
function Steam.setPropertyFloat(item_id, name, value, this_inventory_update_handle) end

---@return Array<any>
function Steam.getFavoriteGames() end

---@param ip string
---@param port integer
---@param query_port integer
---@param flags integer
---@param last_played integer
---@return integer
function Steam.addFavoriteGame(ip, port, query_port, flags, last_played) end

---@param app_id integer
---@param ip string
---@param port integer
---@param query_port integer
---@param flags integer
---@return boolean
function Steam.removeFavoriteGame(app_id, ip, port, query_port, flags) end

function Steam.requestLobbyList() end

---@param key_to_match string
---@param value_to_match string
---@param comparison_type LobbyComparison
function Steam.addRequestLobbyListStringFilter(key_to_match, value_to_match, comparison_type) end

---@param key_to_match string
---@param value_to_match integer
---@param comparison_type LobbyComparison
function Steam.addRequestLobbyListNumericalFilter(key_to_match, value_to_match, comparison_type) end

---@param key_to_match string
---@param value_to_be_close_to integer
function Steam.addRequestLobbyListNearValueFilter(key_to_match, value_to_be_close_to) end

---@param slots_available integer
function Steam.addRequestLobbyListFilterSlotsAvailable(slots_available) end

---@param distance_filter LobbyDistanceFilter
function Steam.addRequestLobbyListDistanceFilter(distance_filter) end

---@param max_results integer
function Steam.addRequestLobbyListResultCountFilter(max_results) end

---@param lobby_type LobbyType
---@param max_members integer?  # Default = 2
function Steam.createLobby(lobby_type, max_members) end

---@param steam_lobby_id integer
function Steam.joinLobby(steam_lobby_id) end

---@param steam_lobby_id integer
function Steam.leaveLobby(steam_lobby_id) end

---@param steam_lobby_id integer
---@param steam_id_invitee integer
---@return boolean
function Steam.inviteUserToLobby(steam_lobby_id, steam_id_invitee) end

---@param steam_lobby_id integer
---@return integer
function Steam.getNumLobbyMembers(steam_lobby_id) end

---@param steam_lobby_id integer
---@param member integer
---@return integer
function Steam.getLobbyMemberByIndex(steam_lobby_id, member) end

---@param steam_lobby_id integer
---@param key string
---@return string
function Steam.getLobbyData(steam_lobby_id, key) end

---@param steam_lobby_id integer
---@param key string
---@param value string
---@return boolean
function Steam.setLobbyData(steam_lobby_id, key, value) end

---@param steam_lobby_id integer
---@return table<any,any>
function Steam.getAllLobbyData(steam_lobby_id) end

---@param steam_lobby_id integer
---@param key string
---@return boolean
function Steam.deleteLobbyData(steam_lobby_id, key) end

---@param steam_lobby_id integer
---@param steam_id_user integer
---@param key string
---@return string
function Steam.getLobbyMemberData(steam_lobby_id, steam_id_user, key) end

---@param steam_lobby_id integer
---@param key string
---@param value string
function Steam.setLobbyMemberData(steam_lobby_id, key, value) end

---@param steam_lobby_id integer
---@param message_body string
---@return boolean
function Steam.sendLobbyChatMsg(steam_lobby_id, message_body) end

---@param steam_lobby_id integer
---@return boolean
function Steam.requestLobbyData(steam_lobby_id) end

---@param steam_lobby_id integer
---@param server_ip string?  # Default = 0
---@param server_port integer?  # Default = 0
---@param steam_id_game_server integer?  # Default = 0
function Steam.setLobbyGameServer(steam_lobby_id, server_ip, server_port, steam_id_game_server) end

---@param steam_lobby_id integer
---@return table<any,any>
function Steam.getLobbyGameServer(steam_lobby_id) end

---@param steam_lobby_id integer
---@param max_members integer
---@return boolean
function Steam.setLobbyMemberLimit(steam_lobby_id, max_members) end

---@param steam_lobby_id integer
---@return integer
function Steam.getLobbyMemberLimit(steam_lobby_id) end

---@param steam_lobby_id integer
---@param lobby_type LobbyType
---@return boolean
function Steam.setLobbyType(steam_lobby_id, lobby_type) end

---@param steam_lobby_id integer
---@param joinable boolean
---@return boolean
function Steam.setLobbyJoinable(steam_lobby_id, joinable) end

---@param steam_lobby_id integer
---@return integer
function Steam.getLobbyOwner(steam_lobby_id) end

---@param steam_lobby_id integer
---@param steam_id_new_owner integer
---@return boolean
function Steam.setLobbyOwner(steam_lobby_id, steam_id_new_owner) end

---@param server_list_request integer
function Steam.cancelQuery(server_list_request) end

---@param server_query integer
function Steam.cancelServerQuery(server_query) end

---@param server_list_request integer
---@return integer
function Steam.getServerCount(server_list_request) end

---@param server integer
---@param server_list_request integer
---@return table<any,any>
function Steam.getServerDetails(server, server_list_request) end

---@param server_list_request integer
---@return boolean
function Steam.isRefreshing(server_list_request) end

---@param ip string
---@param port integer
---@return integer
function Steam.pingServer(ip, port) end

---@param ip string
---@param port integer
---@return integer
function Steam.playerDetails(ip, port) end

---@param server_list_request integer
function Steam.refreshQuery(server_list_request) end

---@param server integer
---@param server_list_request integer
function Steam.refreshServer(server, server_list_request) end

---@param server_list_request integer
function Steam.releaseRequest(server_list_request) end

---@param app_id integer
---@param filters Array<any>
---@return integer
function Steam.requestFavoritesServerList(app_id, filters) end

---@param app_id integer
---@param filters Array<any>
---@return integer
function Steam.requestFriendsServerList(app_id, filters) end

---@param app_id integer
---@param filters Array<any>
---@return integer
function Steam.requestHistoryServerList(app_id, filters) end

---@param app_id integer
---@param filters Array<any>
---@return integer
function Steam.requestInternetServerList(app_id, filters) end

---@param app_id integer
---@return integer
function Steam.requestLANServerList(app_id) end

---@param app_id integer
---@param filters Array<any>
---@return integer
function Steam.requestSpectatorServerList(app_id, filters) end

---@param ip string
---@param port integer
---@return integer
function Steam.serverRules(ip, port) end

---@return boolean
function Steam.musicIsEnabled() end

---@return boolean
function Steam.musicIsPlaying() end

---@return AudioPlaybackStatus
function Steam.getPlaybackStatus() end

---@return number
function Steam.musicGetVolume() end

function Steam.musicPause() end

function Steam.musicPlay() end

function Steam.musicPlayNext() end

function Steam.musicPlayPrev() end

---@param volume number
function Steam.musicSetVolume(volume) end

---@param activate boolean
---@return boolean
function Steam.activationSuccess(activate) end

---@return boolean
function Steam.isCurrentMusicRemote() end

---@return boolean
function Steam.currentEntryDidChange() end

---@param available boolean
---@return boolean
function Steam.currentEntryIsAvailable(available) end

---@return boolean
function Steam.currentEntryWillChange() end

---@return boolean
function Steam.deregisterSteamMusicRemote() end

---@param loop boolean
---@return boolean
function Steam.enableLooped(loop) end

---@param playlists boolean
---@return boolean
function Steam.enablePlaylists(playlists) end

---@param next boolean
---@return boolean
function Steam.enablePlayNext(next) end

---@param previous boolean
---@return boolean
function Steam.enablePlayPrevious(previous) end

---@param queue boolean
---@return boolean
function Steam.enableQueue(queue) end

---@param shuffle boolean
---@return boolean
function Steam.enableShuffled(shuffle) end

---@return boolean
function Steam.playlistDidChange() end

---@return boolean
function Steam.playlistWillChange() end

---@return boolean
function Steam.queueDidChange() end

---@return boolean
function Steam.queueWillChange() end

---@param name string
---@return boolean
function Steam.registerSteamMusicRemote(name) end

---@return boolean
function Steam.resetPlaylistEntries() end

---@return boolean
function Steam.resetQueueEntries() end

---@param id integer
---@return boolean
function Steam.setCurrentPlaylistEntry(id) end

---@param id integer
---@return boolean
function Steam.setCurrentQueueEntry(id) end

---@param name string
---@return boolean
function Steam.setDisplayName(name) end

---@param id integer
---@param position integer
---@param entry_text string
---@return boolean
function Steam.setPlaylistEntry(id, position, entry_text) end

---@param icon PackedByteArray
---@return boolean
function Steam.setPNGIcon64x64(icon) end

---@param id integer
---@param position integer
---@param entry_text string
---@return boolean
function Steam.setQueueEntry(id, position, entry_text) end

---@param art PackedByteArray
---@return boolean
function Steam.updateCurrentEntryCoverArt(art) end

---@param seconds integer
---@return boolean
function Steam.updateCurrentEntryElapsedSeconds(seconds) end

---@param text string
---@return boolean
function Steam.updateCurrentEntryText(text) end

---@param looped boolean
---@return boolean
function Steam.updateLooped(looped) end

---@param status AudioPlaybackStatus
---@return boolean
function Steam.updatePlaybackStatus(status) end

---@param shuffle boolean
---@return boolean
function Steam.updateShuffled(shuffle) end

---@param volume number
---@return boolean
function Steam.updateVolume(volume) end

---@param remote_steam_id integer
---@return boolean
function Steam.acceptP2PSessionWithUser(remote_steam_id) end

---@param allow boolean
---@return boolean
function Steam.allowP2PPacketRelay(allow) end

---@param remote_steam_id integer
---@param channel integer
---@return boolean
function Steam.closeP2PChannelWithUser(remote_steam_id, channel) end

---@param remote_steam_id integer
---@return boolean
function Steam.closeP2PSessionWithUser(remote_steam_id) end

---@param remote_steam_id integer
---@return table<any,any>
function Steam.getP2PSessionState(remote_steam_id) end

---@param channel integer?  # Default = 0
---@return integer
function Steam.getAvailableP2PPacketSize(channel) end

---@param packet integer
---@param channel integer?  # Default = 0
---@return table<any,any>
function Steam.readP2PPacket(packet, channel) end

---@param remote_steam_id integer
---@param data PackedByteArray
---@param send_type P2PSend
---@param channel integer?  # Default = 0
---@return boolean
function Steam.sendP2PPacket(remote_steam_id, data, send_type, channel) end

---@param remote_steam_id integer
---@return boolean
function Steam.acceptSessionWithUser(remote_steam_id) end

---@param remote_steam_id integer
---@param channel integer
---@return boolean
function Steam.closeChannelWithUser(remote_steam_id, channel) end

---@param remote_steam_id integer
---@return boolean
function Steam.closeSessionWithUser(remote_steam_id) end

---@param remote_steam_id integer
---@param get_connection boolean
---@param get_status boolean
---@return table<any,any>
function Steam.getSessionConnectionInfo(remote_steam_id, get_connection, get_status) end

---@param channel integer
---@param max_messages integer
---@return Array<any>
function Steam.receiveMessagesOnChannel(channel, max_messages) end

---@param remote_steam_id integer
---@param data PackedByteArray
---@param flags integer
---@param channel integer
---@return integer
function Steam.sendMessageToUser(remote_steam_id, data, flags, channel) end

---@param connection_handle integer
---@return integer
function Steam.acceptConnection(connection_handle) end

---@param num_ports integer
---@return boolean
function Steam.beginAsyncRequestFakeIP(num_ports) end

---@param peer integer
---@param reason integer
---@param debug_message string
---@param linger boolean
---@return boolean
function Steam.closeConnection(peer, reason, debug_message, linger) end

---@param socket integer
---@return boolean
function Steam.closeListenSocket(socket) end

---@param connection integer
---@param lanes integer
---@param priorities Array<any>
---@param weights Array<any>
---@return integer
function Steam.configureConnectionLanes(connection, lanes, priorities, weights) end

---@param remote_steam_id integer
---@param virtual_port integer
---@param options table<any,any>
---@return integer
function Steam.connectP2P(remote_steam_id, virtual_port, options) end

---@param ip_address_with_port string
---@param options table<any,any>
---@return integer
function Steam.connectByIPAddress(ip_address_with_port, options) end

---@param remote_steam_id integer
---@param virtual_port integer
---@param options table<any,any>
---@return integer
function Steam.connectToHostedDedicatedServer(remote_steam_id, virtual_port, options) end

---@param fake_server_port integer
function Steam.createFakeUDPPort(fake_server_port) end

---@param virtual_port integer
---@param options table<any,any>
---@return integer
function Steam.createHostedDedicatedServerListenSocket(virtual_port, options) end

---@param ip_reference string
---@param options table<any,any>
---@return integer
function Steam.createListenSocketIP(ip_reference, options) end

---@param virtual_port integer
---@param options table<any,any>
---@return integer
function Steam.createListenSocketP2P(virtual_port, options) end

---@param fake_port integer
---@param options table<any,any>
---@return integer
function Steam.createListenSocketP2PFakeIP(fake_port, options) end

---@return integer
function Steam.createPollGroup() end

---@param loopback boolean
---@param remote_steam_id1 integer
---@param remote_steam_id2 integer
---@return table<any,any>
function Steam.createSocketPair(loopback, remote_steam_id1, remote_steam_id2) end

---@param poll_group integer
---@return boolean
function Steam.destroyPollGroup(poll_group) end

---@param connection_handle integer
---@return integer
function Steam.flushMessagesOnConnection(connection_handle) end

---@return NetworkingAvailability
function Steam.getAuthenticationStatus() end

---@return table<any,any>
function Steam.getCertificateRequest() end

---@param connection_handle integer
---@return table<any,any>
function Steam.getConnectionInfo(connection_handle) end

---@param peer integer
---@return string
function Steam.getConnectionName(peer) end

---@param connection_handle integer
---@param lanes integer
---@param get_status boolean?  # Default = true
---@return table<any,any>
function Steam.getConnectionRealTimeStatus(connection_handle, lanes, get_status) end

---@param peer integer
---@return integer
function Steam.getConnectionUserData(peer) end

---@param connection_handle integer
---@return table<any,any>
function Steam.getDetailedConnectionStatus(connection_handle) end

---@param first_port integer?  # Default = 0
---@return table<any,any>
function Steam.getFakeIP(first_port) end

---@return integer
function Steam.getHostedDedicatedServerPOPId() end

---@return integer
function Steam.getHostedDedicatedServerPort() end

---@param socket integer
---@param with_port boolean?  # Default = true
---@return string
function Steam.getListenSocketAddress(socket, with_port) end

---@param connection integer
---@return table<any,any>
function Steam.getRemoteFakeIPForConnection(connection) end

---@return NetworkingAvailability
function Steam.initAuthentication() end

---@param connection integer
---@param max_messages integer
---@return Array<any>
function Steam.receiveMessagesOnConnection(connection, max_messages) end

---@param poll_group integer
---@param max_messages integer
---@return Array<any>
function Steam.receiveMessagesOnPollGroup(poll_group, max_messages) end

---@param remote_steam_id integer
function Steam.resetIdentity(remote_steam_id) end

function Steam.runNetworkingCallbacks() end

---@param connection_handle integer
---@param data PackedByteArray
---@param flags integer
---@return table<any,any>
function Steam.sendMessageToConnection(connection_handle, data, flags) end

---@param certificate PackedByteArray
---@return table<any,any>
function Steam.setCertificate(certificate) end

---@param connection_handle integer
---@param poll_group integer
---@return boolean
function Steam.setConnectionPollGroup(connection_handle, poll_group) end

---@param peer integer
---@param name string
function Steam.setConnectionName(peer, name) end

---@param max_age_in_seconds number
---@return boolean
function Steam.checkPingDataUpToDate(max_age_in_seconds) end

---@param location PackedByteArray
---@return string
function Steam.convertPingLocationToString(location) end

---@param location1 PackedByteArray
---@param location2 PackedByteArray
---@return integer
function Steam.estimatePingTimeBetweenTwoLocations(location1, location2) end

---@param location PackedByteArray
---@return integer
function Steam.estimatePingTimeFromLocalHost(location) end

---@param config_value NetworkingConfigValue
---@param scope_type NetworkingConfigScope
---@param connection_handle integer
---@return table<any,any>
function Steam.getConfigValue(config_value, scope_type, connection_handle) end

---@param config_value NetworkingConfigValue
---@return table<any,any>
function Steam.getConfigValueInfo(config_value) end

---@param pop_id integer
---@return integer
function Steam.getDirectPingToPOP(pop_id) end

---@return table<any,any>
function Steam.getLocalPingLocation() end

---@return integer
function Steam.getLocalTimestamp() end

---@param pop_id integer
---@return table<any,any>
function Steam.getPingToDataCenter(pop_id) end

---@return integer
function Steam.getPOPCount() end

---@return Array<any>
function Steam.getPOPList() end

---@return NetworkingAvailability
function Steam.getRelayNetworkStatus() end

function Steam.initRelayNetworkAccess() end

---@param string string
---@return table<any,any>
function Steam.parsePingLocationString(string) end

---@param connection integer
---@param config NetworkingConfigValue
---@param value number
---@return boolean
function Steam.setConnectionConfigValueFloat(connection, config, value) end

---@param connection integer
---@param config NetworkingConfigValue
---@param value integer
---@return boolean
function Steam.setConnectionConfigValueInt32(connection, config, value) end

---@param connection integer
---@param config NetworkingConfigValue
---@param value string
---@return boolean
function Steam.setConnectionConfigValueString(connection, config, value) end

---@param config NetworkingConfigValue
---@param value number
---@return boolean
function Steam.setGlobalConfigValueFloat(config, value) end

---@param config NetworkingConfigValue
---@param value integer
---@return boolean
function Steam.setGlobalConfigValueInt32(config, value) end

---@param config NetworkingConfigValue
---@param value string
---@return boolean
function Steam.setGlobalConfigValueString(config, value) end

---@return boolean
function Steam.isParentalLockEnabled() end

---@return boolean
function Steam.isParentalLockLocked() end

---@param app_id integer
---@return boolean
function Steam.isAppBlocked(app_id) end

---@param app_id integer
---@return boolean
function Steam.isAppInBlockList(app_id) end

---@param feature ParentalFeature
---@return boolean
function Steam.isFeatureBlocked(feature) end

---@param feature ParentalFeature
---@return boolean
function Steam.isFeatureInBlockList(feature) end

---@param beacon_id integer
---@param steam_id integer
function Steam.cancelReservation(beacon_id, steam_id) end

---@param beacon_id integer
---@param open_slots integer
function Steam.changeNumOpenSlots(beacon_id, open_slots) end

---@param open_slots integer
---@param location_id integer
---@param type PartyBeaconLocationType
---@param connect_string string
---@param beacon_metadata string
function Steam.createBeacon(open_slots, location_id, type, connect_string, beacon_metadata) end

---@param beacon_id integer
---@return boolean
function Steam.destroyBeacon(beacon_id) end

---@param max integer
---@return Array<any>
function Steam.getAvailableBeaconLocations(max) end

---@param index integer
---@return integer
function Steam.getBeaconByIndex(index) end

---@param beacon_id integer
---@return table<any,any>
function Steam.getBeaconDetails(beacon_id) end

---@param location_id integer
---@param location_type PartyBeaconLocationType
---@param location_data PartyBeaconLocationData
---@return string
function Steam.getBeaconLocationData(location_id, location_type, location_data) end

---@return integer
function Steam.getNumActiveBeacons() end

---@param beacon_id integer
function Steam.joinParty(beacon_id) end

---@param beacon_id integer
---@param steam_id integer
function Steam.onReservationCompleted(beacon_id, steam_id) end

---@return integer
function Steam.getSessionCount() end

---@param index integer
---@return integer
function Steam.getSessionID(index) end

---@param session_id integer
---@return integer
function Steam.getSessionSteamID(session_id) end

---@param session_id integer
---@return string
function Steam.getSessionClientName(session_id) end

---@param session_id integer
---@return integer
function Steam.getSessionClientFormFactor(session_id) end

---@param session_id integer
---@return table<any,any>
function Steam.getSessionClientResolution(session_id) end

---@param friend_id integer
---@return boolean
function Steam.sendRemotePlayTogetherInvite(friend_id) end

---@param show_overlay boolean?  # Default = true
---@return boolean
function Steam.startRemotePlayTogether(show_overlay) end

---@return boolean
function Steam.beginFileWriteBatch() end

---@return boolean
function Steam.endFileWriteBatch() end

---@param file string
---@return boolean
function Steam.fileDelete(file) end

---@param file string
---@return boolean
function Steam.fileExists(file) end

---@param file string
---@return boolean
function Steam.fileForget(file) end

---@param file string
---@return boolean
function Steam.filePersisted(file) end

---@param file string
---@param data_to_read integer
---@return table<any,any>
function Steam.fileRead(file, data_to_read) end

---@param file string
---@param offset integer
---@param data_to_read integer
function Steam.fileReadAsync(file, offset, data_to_read) end

---@param file string
function Steam.fileShare(file) end

---@param file string
---@param data PackedByteArray
---@param size integer?  # Default = 0
---@return boolean
function Steam.fileWrite(file, data, size) end

---@param file string
---@param data PackedByteArray
---@param size integer?  # Default = 0
function Steam.fileWriteAsync(file, data, size) end

---@param write_handle integer
---@return boolean
function Steam.fileWriteStreamCancel(write_handle) end

---@param write_handle integer
---@return boolean
function Steam.fileWriteStreamClose(write_handle) end

---@param file string
---@return integer
function Steam.fileWriteStreamOpen(file) end

---@param write_handle integer
---@param data PackedByteArray
---@return boolean
function Steam.fileWriteStreamWriteChunk(write_handle, data) end

---@return integer
function Steam.getCachedUGCCount() end

---@param content integer
---@return integer
function Steam.getCachedUGCHandle(content) end

---@return integer
function Steam.getFileCount() end

---@param file integer
---@return table<any,any>
function Steam.getFileNameAndSize(file) end

---@param file string
---@return integer
function Steam.getFileSize(file) end

---@param file string
---@return integer
function Steam.getFileTimestamp(file) end

---@param file integer
---@return table<any,any>
function Steam.getLocalFileChange(file) end

---@return integer
function Steam.getLocalFileChangeCount() end

---@return table<any,any>
function Steam.getQuota() end

---@param file string
---@return table<any,any>
function Steam.getSyncPlatforms(file) end

---@param content integer
---@return table<any,any>
function Steam.getUGCDetails(content) end

---@param content integer
---@return table<any,any>
function Steam.getUGCDownloadProgress(content) end

---@return boolean
function Steam.isCloudEnabledForAccount() end

---@return boolean
function Steam.isCloudEnabledForApp() end

---@param enabled boolean
function Steam.setCloudEnabledForApp(enabled) end

---@param file string
---@param platform integer
---@return boolean
function Steam.setSyncPlatforms(file, platform) end

---@param content integer
---@param priority integer
function Steam.ugcDownload(content, priority) end

---@param content integer
---@param location string
---@param priority integer
function Steam.ugcDownloadToLocation(content, location, priority) end

---@param content integer
---@param data_size integer
---@param offset integer
---@param action UGCReadAction
---@return PackedByteArray
function Steam.ugcRead(content, data_size, offset, action) end

---@param filename string
---@param thumbnail_filename string
---@param width integer
---@param height integer
---@return integer
function Steam.addScreenshotToLibrary(filename, thumbnail_filename, width, height) end

---@param type VRScreenshotType
---@param filename string
---@param vr_filename string
---@return integer
function Steam.addVRScreenshotToLibrary(type, filename, vr_filename) end

---@param hook boolean
function Steam.hookScreenshots(hook) end

---@return boolean
function Steam.isScreenshotsHooked() end

---@param screenshot integer
---@param location string
---@return boolean
function Steam.setLocation(screenshot, location) end

---@param screenshot integer
---@param file_id integer
---@return boolean
function Steam.tagPublishedFile(screenshot, file_id) end

---@param screenshot integer
---@param steam_id integer
---@return boolean
function Steam.tagUser(screenshot, steam_id) end

function Steam.triggerScreenshot() end

---@param rgb PackedByteArray
---@param width integer
---@param height integer
---@return integer
function Steam.writeScreenshot(rgb, width, height) end

---@param tag_name string
---@param tag_icon string
---@param tag_group string
---@param priority integer
function Steam.addGamePhaseTag(tag_name, tag_icon, tag_group, priority) end

---@param title string
---@param description string
---@param icon string
---@param icon_priority integer
---@param start_offset_seconds number
---@param possible_clip TimelineEventClipPriority?  # Default = 1
---@return integer
function Steam.addInstantaneousTimelineEvent(title, description, icon, icon_priority, start_offset_seconds, possible_clip) end

---@param title string
---@param description string
---@param icon string
---@param icon_priority integer
---@param start_offset_seconds number
---@param duration number
---@param possible_clip TimelineEventClipPriority?  # Default = 1
---@return integer
function Steam.addRangeTimelineEvent(title, description, icon, icon_priority, start_offset_seconds, duration, possible_clip) end

---@param time_delta number
function Steam.clearTimelineTooltip(time_delta) end

---@param this_event integer
function Steam.doesEventRecordingExist(this_event) end

---@param phase_id string
function Steam.doesGamePhaseRecordingExist(phase_id) end

function Steam.endGamePhase() end

---@param this_event integer
---@param end_offset_seconds number
function Steam.endRangeTimelineEvent(this_event, end_offset_seconds) end

---@param phase_id string
function Steam.openOverlayToGamePhase(phase_id) end

---@param this_event integer
function Steam.openOverlayToTimelineEvent(this_event) end

---@param this_event integer
function Steam.removeTimelineEvent(this_event) end

---@param attribute_group string
---@param attribute_value string
---@param priority integer
function Steam.setGamePhaseAttribute(attribute_group, attribute_value, priority) end

---@param phase_id string
function Steam.setGamePhaseID(phase_id) end

---@param mode TimelineGameMode
function Steam.setTimelineGameMode(mode) end

---@param description string
---@param time_delta number
function Steam.setTimelineTooltip(description, time_delta) end

function Steam.startGamePhase() end

---@param title string
---@param description string
---@param icon string
---@param priority integer
---@param start_offset_seconds number
---@param possible_clip TimelineEventClipPriority?  # Default = 1
---@return integer
function Steam.startRangeTimelineEvent(title, description, icon, priority, start_offset_seconds, possible_clip) end

---@param this_event integer
---@param title string
---@param description string
---@param icon string
---@param priority integer
---@param possible_clip TimelineEventClipPriority?  # Default = 1
function Steam.updateRangeTimelineEvent(this_event, title, description, icon, priority, possible_clip) end

---@param published_file_id integer
---@param app_id integer
function Steam.addAppDependency(published_file_id, app_id) end

---@param update_handle integer
---@param descriptor_id integer
---@return boolean
function Steam.addContentDescriptor(update_handle, descriptor_id) end

---@param published_file_id integer
---@param child_published_file_id integer
function Steam.addDependency(published_file_id, child_published_file_id) end

---@param query_handle integer
---@param tag_name string
---@return boolean
function Steam.addExcludedTag(query_handle, tag_name) end

---@param query_handle integer
---@param key string
---@param value string
---@return boolean
function Steam.addItemKeyValueTag(query_handle, key, value) end

---@param query_handle integer
---@param preview_file string
---@param type ItemPreviewType
---@return boolean
function Steam.addItemPreviewFile(query_handle, preview_file, type) end

---@param query_handle integer
---@param video_id string
---@return boolean
function Steam.addItemPreviewVideo(query_handle, video_id) end

---@param app_id integer
---@param published_file_id integer
function Steam.addItemToFavorites(app_id, published_file_id) end

---@param query_handle integer
---@param key string
---@param value string
---@return boolean
function Steam.addRequiredKeyValueTag(query_handle, key, value) end

---@param query_handle integer
---@param tag_name string
---@return boolean
function Steam.addRequiredTag(query_handle, tag_name) end

---@param query_handle integer
---@param tag_array Array<any>
---@return boolean
function Steam.addRequiredTagGroup(query_handle, tag_array) end

---@param workshop_depot_id integer
---@param folder string
---@return boolean
function Steam.initWorkshopForGameServer(workshop_depot_id, folder) end

---@param app_id integer
---@param file_type WorkshopFileType
function Steam.createItem(app_id, file_type) end

---@param query_type UGCQuery
---@param matching_type UGCMatchingUGCType
---@param creator_id integer
---@param consumer_id integer
---@param page integer
---@return integer
function Steam.createQueryAllUGCRequest(query_type, matching_type, creator_id, consumer_id, page) end

---@param published_file_id Array<any>
---@return integer
function Steam.createQueryUGCDetailsRequest(published_file_id) end

---@param account_id integer
---@param list_type UserUGCList
---@param matching_ugc_type UGCMatchingUGCType
---@param sort_order UserUGCListSortOrder
---@param creator_id integer
---@param consumer_id integer
---@param page integer
---@return integer
function Steam.createQueryUserUGCRequest(account_id, list_type, matching_ugc_type, sort_order, creator_id, consumer_id, page) end

---@param published_file_id integer
function Steam.deleteItem(published_file_id) end

---@param published_file_id integer
---@param high_priority boolean
---@return boolean
function Steam.downloadItem(published_file_id, high_priority) end

---@param published_file_id integer
---@return table<any,any>
function Steam.getItemDownloadInfo(published_file_id) end

---@param published_file_id integer
---@return table<any,any>
function Steam.getItemInstallInfo(published_file_id) end

---@param published_file_id integer
---@return integer
function Steam.getItemState(published_file_id) end

---@param update_handle integer
---@return table<any,any>
function Steam.getItemUpdateProgress(update_handle) end

---@return integer
function Steam.getNumSubscribedItems() end

---@param query_handle integer
---@param index integer
---@return integer
function Steam.getNumSupportedGameVersions(query_handle, index) end

---@param query_handle integer
---@param index integer
---@param preview_index integer
---@return table<any,any>
function Steam.getQueryUGCAdditionalPreview(query_handle, index, preview_index) end

---@param query_handle integer
---@param index integer
---@param child_count integer
---@return table<any,any>
function Steam.getQueryUGCChildren(query_handle, index, child_count) end

---@param query_handle integer
---@param index integer
---@param max_entries integer
---@return table<any,any>
function Steam.getQueryUGCContentDescriptors(query_handle, index, max_entries) end

---@param query_handle integer
---@param index integer
---@param key_value_tag_index integer
---@return table<any,any>
function Steam.getQueryUGCKeyValueTag(query_handle, index, key_value_tag_index) end

---@param query_handle integer
---@param index integer
---@return string
function Steam.getQueryUGCMetadata(query_handle, index) end

---@param query_handle integer
---@param index integer
---@return integer
function Steam.getQueryUGCNumAdditionalPreviews(query_handle, index) end

---@param query_handle integer
---@param index integer
---@return integer
function Steam.getQueryUGCNumKeyValueTags(query_handle, index) end

---@param query_handle integer
---@param index integer
---@return integer
function Steam.getQueryUGCNumTags(query_handle, index) end

---@param query_handle integer
---@param index integer
---@return string
function Steam.getQueryUGCPreviewURL(query_handle, index) end

---@param query_handle integer
---@param index integer
---@return table<any,any>
function Steam.getQueryUGCResult(query_handle, index) end

---@param query_handle integer
---@param index integer
---@param stat_type ItemStatistic
---@return table<any,any>
function Steam.getQueryUGCStatistic(query_handle, index, stat_type) end

---@param query_handle integer
---@param index integer
---@param tag_index integer
---@return string
function Steam.getQueryUGCTag(query_handle, index, tag_index) end

---@param query_handle integer
---@param index integer
---@param tag_index integer
---@return string
function Steam.getQueryUGCTagDisplayName(query_handle, index, tag_index) end

---@return Array<any>
function Steam.getSubscribedItems() end

---@param query_handle integer
---@param index integer
---@param version_index integer
---@return table<any,any>
function Steam.getSupportedGameVersionData(query_handle, index, version_index) end

---@param max_entries integer
---@return Array<any>
function Steam.getUserContentDescriptorPreferences(max_entries) end

---@param published_file_id integer
function Steam.getUserItemVote(published_file_id) end

---@param query_handle integer
---@return boolean
function Steam.releaseQueryUGCRequest(query_handle) end

---@param published_file_id integer
---@param app_id integer
function Steam.removeAppDependency(published_file_id, app_id) end

---@param update_handle integer
---@param descriptor_id integer
---@return boolean
function Steam.removeContentDescriptor(update_handle, descriptor_id) end

---@param published_file_id integer
---@param child_published_file_id integer
function Steam.removeDependency(published_file_id, child_published_file_id) end

---@param app_id integer
---@param published_file_id integer
function Steam.removeItemFromFavorites(app_id, published_file_id) end

---@param update_handle integer
---@param key string
---@return boolean
function Steam.removeItemKeyValueTags(update_handle, key) end

---@param update_handle integer
---@param index integer
---@return boolean
function Steam.removeItemPreview(update_handle, index) end

---@param update_handle integer
function Steam.sendQueryUGCRequest(update_handle) end

---@param update_handle integer
---@param admin_query boolean
---@return boolean
function Steam.setAdminQuery(update_handle, admin_query) end

---@param update_handle integer
---@param max_age_seconds integer
---@return boolean
function Steam.setAllowCachedResponse(update_handle, max_age_seconds) end

---@param update_handle integer
---@param match_cloud_filename string
---@return boolean
function Steam.setCloudFileNameFilter(update_handle, match_cloud_filename) end

---@param update_handle integer
---@param content_folder string
---@return boolean
function Steam.setItemContent(update_handle, content_folder) end

---@param update_handle integer
---@param description string
---@return boolean
function Steam.setItemDescription(update_handle, description) end

---@param update_handle integer
---@param ugc_metadata string
---@return boolean
function Steam.setItemMetadata(update_handle, ugc_metadata) end

---@param update_handle integer
---@param preview_file string
---@return boolean
function Steam.setItemPreview(update_handle, preview_file) end

---@param update_handle integer
---@param tag_array Array<any>
---@param allow_admin_tags boolean?  # Default = false
---@return boolean
function Steam.setItemTags(update_handle, tag_array, allow_admin_tags) end

---@param update_handle integer
---@param title string
---@return boolean
function Steam.setItemTitle(update_handle, title) end

---@param update_handle integer
---@param language string
---@return boolean
function Steam.setItemUpdateLanguage(update_handle, language) end

---@param update_handle integer
---@param visibility RemoteStoragePublishedFileVisibility
---@return boolean
function Steam.setItemVisibility(update_handle, visibility) end

---@param query_handle integer
---@param language string
---@return boolean
function Steam.setLanguage(query_handle, language) end

---@param query_handle integer
---@param match_any_tag boolean
---@return boolean
function Steam.setMatchAnyTag(query_handle, match_any_tag) end

---@param query_handle integer
---@param days integer
---@return boolean
function Steam.setRankedByTrendDays(query_handle, days) end

---@param query_handle integer
---@param game_branch_min string
---@param game_branch_max string
---@return boolean
function Steam.setRequiredGameVersions(query_handle, game_branch_min, game_branch_max) end

---@param query_handle integer
---@param return_additional_previews boolean
---@return boolean
function Steam.setReturnAdditionalPreviews(query_handle, return_additional_previews) end

---@param query_handle integer
---@param return_children boolean
---@return boolean
function Steam.setReturnChildren(query_handle, return_children) end

---@param query_handle integer
---@param return_key_value_tags boolean
---@return boolean
function Steam.setReturnKeyValueTags(query_handle, return_key_value_tags) end

---@param query_handle integer
---@param return_long_description boolean
---@return boolean
function Steam.setReturnLongDescription(query_handle, return_long_description) end

---@param query_handle integer
---@param return_metadata boolean
---@return boolean
function Steam.setReturnMetadata(query_handle, return_metadata) end

---@param query_handle integer
---@param return_only_ids boolean
---@return boolean
function Steam.setReturnOnlyIDs(query_handle, return_only_ids) end

---@param query_handle integer
---@param days integer
---@return boolean
function Steam.setReturnPlaytimeStats(query_handle, days) end

---@param query_handle integer
---@param return_total_only boolean
---@return boolean
function Steam.setReturnTotalOnly(query_handle, return_total_only) end

---@param query_handle integer
---@param search_text string
---@return boolean
function Steam.setSearchText(query_handle, search_text) end

---@param published_file_id integer
---@param vote_up boolean
function Steam.setUserItemVote(published_file_id, vote_up) end

---@param app_id integer
---@param file_id integer
---@return integer
function Steam.startItemUpdate(app_id, file_id) end

---@param published_file_ids Array<any>
function Steam.startPlaytimeTracking(published_file_ids) end

---@param published_file_ids Array<any>
function Steam.stopPlaytimeTracking(published_file_ids) end

function Steam.stopPlaytimeTrackingForAllItems() end

---@param published_file_id integer
function Steam.getAppDependencies(published_file_id) end

---@param update_handle integer
---@param change_note string
function Steam.submitItemUpdate(update_handle, change_note) end

---@param published_file_id integer
function Steam.subscribeItem(published_file_id) end

---@param suspend boolean
function Steam.suspendDownloads(suspend) end

---@param published_file_id integer
function Steam.unsubscribeItem(published_file_id) end

---@param update_handle integer
---@param index integer
---@param preview_file string
---@return boolean
function Steam.updateItemPreviewFile(update_handle, index, preview_file) end

---@param update_handle integer
---@param index integer
---@param video_id string
---@return boolean
function Steam.updateItemPreviewVideo(update_handle, index, video_id) end

---@return boolean
function Steam.showWorkshopEULA() end

function Steam.getWorkshopEULAStatus() end

---@param update_handle integer
---@param start integer
---@param end_ integer
---@return boolean
function Steam.setTimeCreatedDateRange(update_handle, start, end_) end

---@param update_handle integer
---@param start integer
---@param end_ integer
---@return boolean
function Steam.setTimeUpdatedDateRange(update_handle, start, end_) end

---@param server_ip string
---@param port integer
function Steam.advertiseGame(server_ip, port) end

---@param ticket PackedByteArray
---@param ticket_size integer
---@param steam_id integer
---@return BeginAuthSessionResult
function Steam.beginAuthSession(ticket, ticket_size, steam_id) end

---@param auth_ticket integer
function Steam.cancelAuthTicket(auth_ticket) end

---@param voice PackedByteArray
---@param sample_rate integer
---@param buffer_size_override integer?  # Default = 20480
---@return table<any,any>
function Steam.decompressVoice(voice, sample_rate, buffer_size_override) end

---@param steam_id integer
function Steam.endAuthSession(steam_id) end

---@param remote_steam_id integer?  # Default = 0
---@return table<any,any>
function Steam.getAuthSessionTicket(remote_steam_id) end

---@param service_identity string?  # Default = 
---@return integer
function Steam.getAuthTicketForWebApi(service_identity) end

---@return table<any,any>
function Steam.getAvailableVoice() end

function Steam.getDurationControl() end

---@return table<any,any>
function Steam.getEncryptedAppTicket() end

---@param series integer
---@param foil boolean
---@return integer
function Steam.getGameBadgeLevel(series, foil) end

---@return integer
function Steam.getPlayerSteamLevel() end

---@return integer
function Steam.getSteamID() end

---@param buffer_size_override integer?  # Default = 0
---@return table<any,any>
function Steam.getVoice(buffer_size_override) end

---@return integer
function Steam.getVoiceOptimalSampleRate() end

---@param server_id integer
---@param server_ip string
---@param server_port integer
---@param secure boolean
---@return table<any,any>
function Steam.initiateGameConnection(server_id, server_ip, server_port, secure) end

---@return boolean
function Steam.isBehindNAT() end

---@return boolean
function Steam.isPhoneIdentifying() end

---@return boolean
function Steam.isPhoneRequiringVerification() end

---@return boolean
function Steam.isPhoneVerified() end

---@return boolean
function Steam.isTwoFactorEnabled() end

---@return boolean
function Steam.loggedOn() end

---@param secret string
function Steam.requestEncryptedAppTicket(secret) end

---@param redirect string
function Steam.requestStoreAuthURL(redirect) end

function Steam.startVoiceRecording() end

---@param new_state integer
---@return boolean
function Steam.setDurationControlOnlineState(new_state) end

function Steam.stopVoiceRecording() end

---@param server_ip string
---@param server_port integer
function Steam.terminateGameConnection(server_ip, server_port) end

---@param steam_id integer
---@param app_id integer
---@return integer
function Steam.userHasLicenseForApp(steam_id, app_id) end

---@param ugc_handle integer
---@param this_leaderboard integer?  # Default = 0
function Steam.attachLeaderboardUGC(ugc_handle, this_leaderboard) end

---@param achievement_name string
---@return boolean
function Steam.clearAchievement(achievement_name) end

---@param start integer
---@param end_ integer
---@param type LeaderboardDataRequest?  # Default = 0
---@param this_leaderboard integer?  # Default = 0
function Steam.downloadLeaderboardEntries(start, end_, type, this_leaderboard) end

---@param users_id Array<any>
---@param this_leaderboard integer?  # Default = 0
function Steam.downloadLeaderboardEntriesForUsers(users_id, this_leaderboard) end

---@param leaderboard_name string
function Steam.findLeaderboard(leaderboard_name) end

---@param leaderboard_name string
---@param sort_method LeaderboardSortMethod
---@param display_type LeaderboardDisplayType
function Steam.findOrCreateLeaderboard(leaderboard_name, sort_method, display_type) end

---@param achievement_name string
---@return table<any,any>
function Steam.getAchievement(achievement_name) end

---@param achievement_name string
---@return table<any,any>
function Steam.getAchievementAchievedPercent(achievement_name) end

---@param achievement_name string
---@return table<any,any>
function Steam.getAchievementAndUnlockTime(achievement_name) end

---@param achievement_name string
---@param key string
---@return string
function Steam.getAchievementDisplayAttribute(achievement_name, key) end

---@param achievement_name string
---@return integer
function Steam.getAchievementIcon(achievement_name) end

---@param achievement integer
---@return string
function Steam.getAchievementName(achievement) end

---@param achievement_name string
---@return table<any,any>
function Steam.getAchievementProgressLimitsInt(achievement_name) end

---@param achievement_name string
---@return table<any,any>
function Steam.getAchievementProgressLimitsFloat(achievement_name) end

---@param stat_name string
---@return integer
function Steam.getGlobalStatInt(stat_name) end

---@param stat_name string
---@return number
function Steam.getGlobalStatFloat(stat_name) end

---@param stat_name string
---@return PackedInt64Array
function Steam.getGlobalStatIntHistory(stat_name) end

---@param stat_name string
---@return PackedFloat64Array
function Steam.getGlobalStatFloatHistory(stat_name) end

---@param this_leaderboard integer?  # Default = 0
---@return table<any,any>
function Steam.getLeaderboardDisplayType(this_leaderboard) end

---@param this_leaderboard integer?  # Default = 0
---@return integer
function Steam.getLeaderboardEntryCount(this_leaderboard) end

---@param this_leaderboard integer?  # Default = 0
---@return string
function Steam.getLeaderboardName(this_leaderboard) end

---@param this_leaderboard integer?  # Default = 0
---@return table<any,any>
function Steam.getLeaderboardSortMethod(this_leaderboard) end

---@return table<any,any>
function Steam.getMostAchievedAchievementInfo() end

---@param iterator integer
---@return table<any,any>
function Steam.getNextMostAchievedAchievementInfo(iterator) end

---@return integer
function Steam.getNumAchievements() end

function Steam.getNumberOfCurrentPlayers() end

---@param stat_name string
---@return number
function Steam.getStatFloat(stat_name) end

---@param stat_name string
---@return integer
function Steam.getStatInt(stat_name) end

---@param steam_id integer
---@param name string
---@return table<any,any>
function Steam.getUserAchievement(steam_id, name) end

---@param steam_id integer
---@param name string
---@return table<any,any>
function Steam.getUserAchievementAndUnlockTime(steam_id, name) end

---@param steam_id integer
---@param name string
---@return number
function Steam.getUserStatFloat(steam_id, name) end

---@param steam_id integer
---@param name string
---@return integer
function Steam.getUserStatInt(steam_id, name) end

---@param name string
---@param current_progress integer
---@param max_progress integer
---@return boolean
function Steam.indicateAchievementProgress(name, current_progress, max_progress) end

function Steam.requestGlobalAchievementPercentages() end

---@param history_days integer
function Steam.requestGlobalStats(history_days) end

---@param steam_id integer
function Steam.requestUserStats(steam_id) end

---@param achievements_too boolean
---@return boolean
function Steam.resetAllStats(achievements_too) end

---@param name string
---@return boolean
function Steam.setAchievement(name) end

---@param name string
---@param value number
---@return boolean
function Steam.setStatFloat(name, value) end

---@param name string
---@param value integer
---@return boolean
function Steam.setStatInt(name, value) end

---@return boolean
function Steam.storeStats() end

---@param name string
---@param this_session number
---@param session_length number
---@return boolean
function Steam.updateAvgRateStat(name, this_session, session_length) end

---@param score integer
---@param keep_best boolean?  # Default = true
---@param details PackedInt32Array?  # Default = []
---@param this_leaderboard integer?  # Default = 0
function Steam.uploadLeaderboardScore(score, keep_best, details, this_leaderboard) end

---@return boolean
function Steam.dismissFloatingGamepadTextInput() end

---@return boolean
function Steam.dismissGamepadTextInput() end

---@param context TextFilteringContext
---@param steam_id integer
---@param message string
---@return string
function Steam.filterText(context, steam_id, message) end

---@return string
function Steam.getAPICallFailureReason() end

---@return integer
function Steam.getAppID() end

---@return integer
function Steam.getCurrentBatteryPower() end

---@param image integer
---@return table<any,any>
function Steam.getImageRGBA(image) end

---@param image integer
---@return table<any,any>
function Steam.getImageSize(image) end

---@return integer
function Steam.getIPCCallCount() end

---@return string
function Steam.getIPCountry() end

---@return integer
function Steam.getSecondsSinceAppActive() end

---@return integer
function Steam.getSecondsSinceComputerActive() end

---@return integer
function Steam.getServerRealTime() end

---@return string
function Steam.getSteamUILanguage() end

---@return boolean
function Steam.initFilterText() end

---@return table<any,any>
function Steam.isAPICallCompleted() end

---@return boolean
function Steam.isOverlayEnabled() end

---@return boolean
function Steam.isSteamChinaLauncher() end

---@return boolean
function Steam.isSteamInBigPictureMode() end

---@return boolean
function Steam.isSteamRunningInVR() end

---@return boolean
function Steam.isSteamRunningOnSteamDeck() end

---@return boolean
function Steam.isVRHeadsetStreamingEnabled() end

---@return boolean
function Steam.overlayNeedsPresent() end

---@param mode boolean
function Steam.setGameLauncherMode(mode) end

---@param horizontal integer
---@param vertical integer
function Steam.setOverlayNotificationInset(horizontal, vertical) end

---@param pos integer
function Steam.setOverlayNotificationPosition(pos) end

---@param enabled boolean
function Steam.setVRHeadsetStreamingEnabled(enabled) end

---@param input_mode FloatingGamepadTextInputMode
---@param text_field_x_position integer
---@param text_field_y_position integer
---@param text_field_width integer
---@param text_field_height integer
---@return boolean
function Steam.showFloatingGamepadTextInput(input_mode, text_field_x_position, text_field_y_position, text_field_width, text_field_height) end

---@param input_mode GamepadTextInputMode
---@param line_input_mode GamepadTextInputLineMode
---@param description string
---@param max_text integer
---@param preset_text string
---@return boolean
function Steam.showGamepadTextInput(input_mode, line_input_mode, description, max_text, preset_text) end

function Steam.startVRDashboard() end

---@param app_id integer
function Steam.getOPFSettings(app_id) end

---@param app_id integer
---@return string
function Steam.getOPFStringForApp(app_id) end

---@param app_id integer
function Steam.getVideoURL(app_id) end

---@return table<any,any>
function Steam.isBroadcasting() end
