local status_ok, dashboard = pcall(require, "dashboard")
if not status_ok then
  print('Existe algun problema al llamar Dashboard')
  return
end

dashboard.preview_command = 'cat | lolcat -F 0.3'
