vim.g.barbaric_ime = 'macos'

--[[
-- 使用BUG记录 (2022/05/19)
--
-- 昨晚还用的好好的，今早不行了。看到GitHub说mac就是有BUG，我有点犯怵
--
-- 但还是试了下在终端下手动执行 xkbswitch 命令
-- 结果不加 sudo, Permission deny; 加了 sudo 后又说找不到
-- 于是我来了个权限修改 sudo chmod 755 /usr/local/bin/xkbswitch
--
-- 结果就好了 (喜极而泣)
--
-- 有时候还是出问题，好像要重启终端才可以...
--]]
