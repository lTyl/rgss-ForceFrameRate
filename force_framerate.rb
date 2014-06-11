#==============================================================================
# Frame Rate
#==============================================================================
# Written by Synthesize
# 1.02
# August 11, 2007
#==============================================================================
#------------------------------------------------------------------------------
# Begin Customization Section
# Modify the desired Frame Rate below
#------------------------------------------------------------------------------
  MAP = 60   # The Average Frame Rate to play on the map NOTE: 1-120 only
  MENU = 40   # The Average Frame Rate to play during the menu NOTE: 1-120 only
#-----------------------------------------------------------------------------
# Begin Script
#-----------------------------------------------------------------------------
class Scene_Map
  # Alias Scene_Map
  alias syn_gfr_rise update
  def update
    if Graphics.frame_rate <= MAP
      Graphics.frame_rate = MAP
    end
    syn_gfr_rise
  end
end
class Scene_Menu
  alias syn_menu_update update
  def update
    Graphics.frame_rate == MENU
  end
end

  
#==============================================================================
# Written by Synthesize
#==============================================================================
# Frame Rate
#==============================================================================