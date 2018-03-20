# 说明
govim-find-func 插件用于查找go项目中, 函数被调用情况 , 并列出所有调用位置

注意: 只支持Linux环境


# 安装:

```
Plugin 'git@github.com:relunctance/govim-find-func.git'
```

# .vimrc 配置查找PATH:
如果没有全局变量govim_find_func_path 则使用当前文件所在路径的Path
```
"配置需要查找的路径path 
let g:govim_find_func_path="/home/path1:/home/path2"
map <leader>d :call GoVimFindWord()<CR>
"或者定义快捷键<F4>
map <F9> :call GoVimFindWord()<CR>
```

