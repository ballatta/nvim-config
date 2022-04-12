local mode_map = {
  ['n'] = 'normal ',
  ['no'] = 'n·operator pending ',
  ['v'] = 'visual ',
  ['V'] = 'v·line ',
  [''] = 'v·block ',
  ['s'] = 'select ',
  ['S'] = 's·line ',
  [''] = 's·block ',
  ['i'] = 'insert ',
  ['R'] = 'replace ',
  ['Rv'] = 'v·replace ',
  ['c'] = 'command ',
  ['cv'] = 'vim ex ',
  ['ce'] = 'ex ',
  ['r'] = 'prompt ',
  ['rm'] = 'more ',
  ['r?'] = 'confirm ',
  ['!'] = 'shell ',
  ['t'] = 'terminal '
}

function mode()
  local m = vim.api.nvim_get_mode().mode
  if mode_map[m] == nil then return m end
  return mode_map[m]
end

function window_number()
  local wn = vim.api.nvim_win_get_number({window})
  return wn
end

function stl()
  return table.concat {
    '%#PrimaryBlock#',
    "%{luaeval('mode()')}",
    "%{luaeval('window_number()')}",
    '%#SecondaryBlock#',
    '%#Blanks# ',
    '%f',
    '%m',
    '%=',
    '%#SecondaryBlock#',
    '%l,%c ',
    '%#PrimaryBlock#',
    '%{&filetype}',
  }
end

vim.o.statusline = "%!luaeval('stl()')"
