```
.
├── after
│   └── plugin
│       └── custom.lua
├── init.lua
├── lua
│   ├── core
│   │   ├── keymaps.lua
│   │   ├── options.lua
│   │   └── plugins.lua
│   └── plugins
│       ├── configs
│       │   ├── cmp.lua
│       │   ├── lsp.lua
│       │   └── treesitter.lua
│       └── init.lua
└── plugin
    └── packer_compiled.lua
```

主要组成:

* init.lua:主配置文件,require各配置模块
* core/:核心配置,.lua文件组织选项/快捷键等
* plugins/:管理插件的目录
* after/plugin/:自定义自动命令等,在插件后加载
* plugin/packer_compiled.lua:Packer编译的插件列表

---

简单来讲就是：

* plugins/init.lua用来添加插件：use XXX
* plugins/configs目录中，可以对上面添加的插件进行详细配置
