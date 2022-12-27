local found, colorizer = pcall(require, "colorizer")
if not found then
  print("colorizer not found")
  return
end

colorizer.setup({
    'css';
    'javascript';
    'html',
  }, {
  css = true;
  }
)
