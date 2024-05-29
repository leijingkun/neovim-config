return {
    {
    -- 
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
            require('neoscroll').setup({
                    -- All these keys will be mapped to their corresponding default scrolling animation
                    mappings = { '<C-u>', '<C-d>', -- 半屏上下滚(光标行在屏上的位置不动)
                            '<C-b>', '<C-F>', -- 整屏上下滚(光标行在屏上的位置不动)
                            '<C-y>', '<C-e>', -- 逐行上下滚(光标行在屏上的位置跟着动)
                            'zt', 'zz', 'zb' }, -- 光标行和代码行一起居3/4,居中,1/4
                    hide_cursor = true, -- Hide cursor while scrolling
                    stop_eof = true, -- Stop at <EOF> when scrolling downwards
                    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
                    respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
                    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
                    easing_function = nil, -- Default easing function
                    pre_hook = nil, -- Function to run before the scrolling animation starts
                    post_hook = nil, -- Function to run after the scrolling animation ends
            })
    end
    -- 涉及三个物体的关系,
    -- 一个相对人眼固定不动的窗口--屏幕;
    -- 一条存储了N行代码的长纸带,纸带能相对窗口上下移动;
    -- 一个光标所在行,能在屏幕内上下移动;

    -- <C-u>	光标行与屏幕相对静止,纸带下滚半屏
    -- <C-d>	光标行与屏幕相对静止,纸带上滚半屏
    -- <C-b>	光标行与屏幕相对静止,纸带下滚全屏
    -- <C-f>	光标行与屏幕相对静止,纸带上滚全屏

    -- <C-y>	光标行与纸带相对静止,纸带逐行下滚
    -- <C-e>	光标行与纸带相对静止,纸带逐行上滚
    -- zt	        光标行与纸带相对静止,纸带上滚到区间顶
    -- zz	        光标行与纸带相对静止,纸带滚到区间中
    -- zb	        光标行与纸带相对静止,纸带下滚到区间底
}
}
