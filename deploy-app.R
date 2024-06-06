rsconnect::deployApp(
  appDir = "./", 
  appFileManifest = "manifest.json", 
  account = Sys.getenv("CONNECT_API_KEY"), 
  server = Sys.getenv("CONNECT_SERVER")
)