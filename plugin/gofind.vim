" 全局变量 , 请最好自己定义
" 格式: /home/path1:/home/path2
if !exists("g:govim_find_func_path")
    let govim_find_func_tmp_path=expand("%:p")   "获取绝对路径
    let arr = split(govim_find_func_tmp_path, "/")
    let g:govim_find_func_path= "/" . join(arr[0:-2],"/") "返回dirpath
endif

function! GoVimFindWord() "首字母需要大写
    let g:govimfind_word =expand("<cword>") " 获取光标所在单词
    execute "!~/.vim/bundle/govim-find-func/plugin/find_grep.sh " . g:govimfind_word . " " . g:govim_find_func_path
endfunction

