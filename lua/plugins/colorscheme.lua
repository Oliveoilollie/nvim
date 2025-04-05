-- stolen from the primeagen
function ColorMyPencils(color)
	color = color or "kanagawa-dragon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return 
	{
      -- drews old colorsheme. doesnt match my red vibes  
      --'projekt0n/github-nvim-theme',
      'rebelot/kanagawa.nvim',
        config = function()
           --vim.cmd.colorscheme("github_dark_default")
           -- vim.cmd.colorscheme("kanagawa-dragon")
           -- i am a transparency sluttt
           ColorMyPencils()
           
           
        end,
    }	
 
