local function tmux_navigate(direction)
  return function()
    if vim.fn.mode() == "t" then
      vim.cmd("stopinsert")
    end
    vim.cmd("TmuxNavigate" .. direction)
  end
end

return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    init = function()
      vim.g.tmux_navigator_no_mappings = 1
    end,
    keys = {
      { "<C-h>", tmux_navigate("Left"), mode = { "n", "t" }, desc = "Go to Left Split" },
      { "<C-j>", tmux_navigate("Down"), mode = { "n", "t" }, desc = "Go to Lower Split" },
      { "<C-k>", tmux_navigate("Up"), mode = { "n", "t" }, desc = "Go to Upper Split" },
      { "<C-l>", tmux_navigate("Right"), mode = { "n", "t" }, desc = "Go to Right Split" },
      { "<C-\\>", tmux_navigate("Previous"), mode = { "n", "t" }, desc = "Go to Previous Split" },
    },
  },
}
