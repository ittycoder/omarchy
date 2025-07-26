local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.set_environment_variables = {
  TERM = 'xterm-256color',
}

config.font = wezterm.font('CaskaydiaMono Nerd Font', { weight = 'Regular' })
config.font_size = 12


config.font_rules = {
  {
    intensity = 'Bold',
    font = wezterm.font('CaskaydiaMono Nerd Font', { weight = 'Bold' }),
  },
  {
    italic = true,
    font = wezterm.font('CaskaydiaMono Nerd Font', { style = 'Italic' }),
  },
  {
    intensity = 'Bold',
    italic = true,
    font = wezterm.font('CaskaydiaMono Nerd Font', { weight = 'Bold', style = 'Italic' }),
  },
}


config.window_padding = {
  left = 14,
  right = 14,
  top = 14,
  bottom = 14,
}

config.window_decorations = "NONE"
config.window_background_opacity = 0.98


config.keys = {
  {
    key = 'F11',
    mods = 'NONE',
    action = wezterm.action.ToggleFullScreen,
  },
}

-- Color scheme configuration
-- config.color_scheme = 'Catppuccin Macchiato'  -- matches your catppuccin theme
-- config.color_scheme = 'Catppuccin Latte'     -- matches your catppuccin-latte theme  
config.color_scheme = 'Tokyo Night'          -- matches your tokyo-night theme
-- config.color_scheme = 'Gruvbox Dark'         -- matches your gruvbox theme
-- config.color_scheme = 'Nord'                 -- matches your nord theme
-- config.color_scheme = 'Everforest Dark'      -- similar to your everforest theme
-- config.color_scheme = 'Rosé Pine'            -- matches your rose-pine theme

local function apply_custom_theme(theme_name)
  if theme_name == 'custom' then
    config.colors = {
      foreground = '#cad3f5',
      background = '#24273a',
      cursor_bg = '#f4dbd6',
      cursor_fg = '#24273a',
      cursor_border = '#f4dbd6',
      selection_fg = '#24273a',
      selection_bg = '#5b6078',
      scrollbar_thumb = '#363a4f',
      split = '#6e738d',
      ansi = {
        '#494d64', -- black
        '#ed8796', -- red  
        '#a6da95', -- green
        '#eed49f', -- yellow
        '#8aadf4', -- blue
        '#f5bde6', -- magenta
        '#8bd5ca', -- cyan
        '#b8c0e0', -- white
      },
      brights = {
        '#5b6078', -- bright black
        '#ed8796', -- bright red
        '#a6da95', -- bright green  
        '#eed49f', -- bright yellow
        '#8aadf4', -- bright blue
        '#f5bde6', -- bright magenta
        '#8bd5ca', -- bright cyan
        '#a5adcb', -- bright white
      },
    }
  end
end

-- apply_custom_theme('custom')
return config 