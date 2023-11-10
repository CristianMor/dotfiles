local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  print "Existe un problema con luasnip"
  return
end
