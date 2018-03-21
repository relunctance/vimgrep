# 说明
govim-find-func 插件用于查找项目中, 光标所在字符出现的情况, 并列出所有调用位置

# 功能
* 若不配置g:govim_find_func_path全局变量,则在当前打开文件对应的目录中检索
* 高亮显示查找内容
* 自动识别文件后缀,会在所配置项目下所有相同后缀下查找
* 如果vim打开的文件没有后缀,则检索所有类型的文件

注意: 只支持Linux环境 


# 安装:

使用Bundle管理插件
```

Plugin 'relunctance/govim-find-func'

```
:wq退出保存, 重新打开.vimrc 执行:BundleInstall

# .vimrc 配置查找PATH:
如果没有全局变量govim_find_func_path 则使用当前文件所在路径的Path
```
"配置需要查找的路径path 
let g:govim_find_func_path="/home/path1:/home/path2"
map <leader>d :call GoVimFindWord()<CR>
"或者定义快捷键<F9>
map <F9> :call GoVimFindWord()<CR>
```

