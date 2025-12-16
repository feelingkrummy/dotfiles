local kr = {}

function kr.buffer_close(opt)
    opt = opt or {}

    force = opt.force or false

    local target_buf_num = vim.api.nvim_get_current_buf()

    local is_modified = vim.api.nvim_get_option_value(
        "modified",
        {buf = curernt_buffer_num}
    )

    if is_modified and (not force) then
        local msg_string = "buffer_close : " ..
            vim.api.nvim_buf_get_name(target_buf_num) ..
            " cannot be closed due to unsaved modifications, set force=true to force close"
        vim.api.nvim_echo(
            { { msg_string, "WarningMsg" } },
            true,
            {}
        )
        return
    end

    -- Iterate over all windows and find windows
    -- with the current buffer open
    local win_list = {}
    for i,w in ipairs(vim.api.nvim_list_wins()) do
        local winbuf = vim.api.nvim_win_get_buf(w)
        if winbuf == target_buf_num then
            table.insert(win_list, w)
        end
    end

    for i,win in ipairs(win_list) do
        vim.api.nvim_win_call(
            win,
            vim.cmd.bprevious
        )
        if vim.api.nvim_win_get_buf(win) == target_buf_num then
            -- If bprevious resulted in target buffer,
            -- search for a loaded buffer to switch to
            local found_loaded_buf = false
            for i,buf in ipairs(vim.api.nvim_list_bufs()) do
                if vim.api.nvim_buf_is_loaded(buf) then
                    vim.api.nvim_win_call(
                        win,
                        function() vim.cmd.buffer(buf) end
                    )
                end
            end
            -- If we can't find a loaded buffer, open a new one
            if not found_loaded_buf then
                vim.api.nvim_win_call(
                    win, vim.cmd.enew
                )
            end
        end
    end

    vim.cmd.bdelete{target_buf_num, bang = force}
    return
end

return kr
