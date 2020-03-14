-- Copyright 2018 lean <coolsnowwolf@gmail.com>
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.webadmin", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/uhttpd") then
		return
	end

	entry({"admin", "custom"}, firstchild(), "我的", 89).dependent = false
	entry({"admin", "custom", "webadmin"}, cbi("webadmin"), _("Web Admin"), 20).dependent = true

end

