package = "autovshard"
version = "scm-1"
source = {
  url = "git://github.com/bofm/tarantool-autovshard.git",
}
description = {
  summary = "autovshard",
  detailed = [[
    Vshard wrapper with automatic master election, failover and centralized
    configuration storage in Consul.
  ]],
  homepage = "https://github.com/bofm/tarantool-autovshard",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["autovshard"] = "autovshard/init.lua",
    ["autovshard.util"] = "autovshard/util.lua",
    ["autovshard.consul"] = "autovshard/consul.lua",
    ["autovshard.wlock"] = "autovshard/wlock.lua",
    ["autovshard.config"] = "autovshard/config.lua",
  }
}
