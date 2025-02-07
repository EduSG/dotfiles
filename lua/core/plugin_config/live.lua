live_server.setup({
  port = 7567,
  browser_command = "firefox", -- Command or executable path
  quiet = false,
  no_css_inject = true,
  install_path = os.getenv("HOME") .. "/live/",
})
