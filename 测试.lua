
function forCompose(layout, subassembly)
    for i = 1, 10 do
        table.insert(layout, table.clone(subassembly))
    end
end

--带+-的数字输入框
numberButton = {
    composeType = "NumberButton",
    text = "输入框按钮",
    initialNumber = 0,--默认值，可获取输入框内容
    min = 0,--最小值
    max = 100000,--最大值
    range = 2,-- +-按钮每次增加或者减少数量
    func = function(number)--输入内容回调函数，可获取输入框内容
        gg.toast(number)
    end
}

--文本输入框
TextFiled = {
    composeType = "TextFiled",
    text = "自定义输入框：",
    initialString = "",--默认值，可获取输入框内容
    func = function(text)--输入内容回调函数，可获取输入框内容
        gg.toast(text)
    end
}

--按钮
Button = {
    composeType = "Button",
    text = "按钮",
    func = function()--按钮点击回调函数
        Button.text = '更新按钮'
        gg.alert(TextFiled.initialString)
    end
}

--开关
Switch = {
    composeType = "Switch",
    text = "开关功能",
    isCheck = false,--开关默认状态
    func = function(check)--开关回调函数(check附带开关状态，为true是就是开启状态)
    
    end
}

--勾选框
CheckBox = {
    composeType = "CheckBox",
    text = "勾选功能",
    isCheck = false,--勾选框默认状态
    func = function(check)--勾选框回调函数(check附带开关状态，为true是就是开启状态)
        gg.toast("勾选"..tostring(check))
    end
}

--波纹滑块
WaveSlider = {
    composeType = "WaveSlider",
    text = "波纹滑块",
    max = 10,--滑块最大范围
    finishFunc = function(value) --滑块滑动结束执行该函数
        gg.toast(value)
    end,
    animateWave = false,--是否启用波纹动画
    reverseDirection = true,--是否拖动时启用波纹
    reverseFlatline = true
}

--折叠布局
Expandable = {
    composeType = "Expandable",
    text = "折叠布局",
    subTitle = "副标题",
    isExpanded = false,
    func = function(isExpanded)
        Expandable.isExpanded = isExpanded
    end,
    numberButton,
    Switch,
    CheckBox,
    WaveSlider,
    TextFiled,
    Button,
}

--线性布局(垂直方向)
Column = {
    composeType = "Column",
    numberButton,
    Switch,
    CheckBox,
    WaveSlider,
    TextFiled,
    Button,
}

numberButton1 = {
    composeType = "NumberButton",
    text = "输入框按钮1",
    initialNumber = 0,--默认值，可获取输入框内容
    min = 0,--最小值
    max = 100000,--最大值
    range = 2,-- +-按钮每次增加或者减少数量
    func = function(number)--输入内容回调函数，可获取输入框内容
        gg.toast(number)
    end
}
numberButton2 = {
    composeType = "NumberButton",
    text = "输入框按钮2",
    initialNumber = 0,--默认值，可获取输入框内容
    min = 0,--最小值
    max = 100000,--最大值
    range = 2,-- +-按钮每次增加或者减少数量
    func = function(number)--输入内容回调函数，可获取输入框内容
        gg.toast(number)
    end
}
numberButton3 = {
    composeType = "NumberButton",
    text = "输入框按钮3",
    initialNumber = 0,--默认值，可获取输入框内容
    min = 0,--最小值
    max = 100000,--最大值
    range = 2,-- +-按钮每次增加或者减少数量
    func = function(number)--输入内容回调函数，可获取输入框内容
        gg.toast(number)
    end
}
numberButton4 = {
    composeType = "NumberButton",
    text = "输入框按钮4",
    initialNumber = 0,--默认值，可获取输入框内容
    min = 0,--最小值
    max = 100000,--最大值
    range = 2,-- +-按钮每次增加或者减少数量
    func = function(number)--输入内容回调函数，可获取输入框内容
        gg.toast(number)
    end
}
numberButton5 = {
    composeType = "NumberButton",
    text = "输入框按钮5",
    initialNumber = 0,--默认值，可获取输入框内容
    min = 0,--最小值
    max = 100000,--最大值
    range = 2,-- +-按钮每次增加或者减少数量
    func = function(number)--输入内容回调函数，可获取输入框内容
        gg.toast(number)
    end
}
numberButton6 = {
    composeType = "NumberButton",
    text = "输入框按钮6",
    initialNumber = 0,--默认值，可获取输入框内容
    min = 0,--最小值
    max = 100000,--最大值
    range = 2,-- +-按钮每次增加或者减少数量
    func = function(number)--输入内容回调函数，可获取输入框内容
        gg.toast(number)
    end
}

Chip1 = {
    composeType = "Chip",
    text = "4399",--标签文本内容
    isCheck = false,--标签默认状态(false表示为选中)
    func = function(check)
        Chip1.isCheck = check--点击标签后同步标签状态
    end
}

Chip2 = {
    composeType = "Chip",
    text = "TapTap",
    isCheck = true,
    func = function(check)
        Chip2.isCheck = check
    end
}

Chip3 = {
    composeType = "Chip",
    text = "IOS",
    isCheck = false,
    func = function(check)
        Chip3.isCheck = check
    end
}

Icon = {
    composeType = "Icon",
    url = "/storage/emulated/0/ic_launcher.png"
}

ChipRow = {
    composeType = "LazyRow",--水平方向的可滑动列表
    spaced = 5,--设置每个列表的间隔
    padding = 5,
    Chip1,
    Chip2,
    Chip3,
    Icon
}

ButtonChip = {
    composeType = "Button",
    text = "获取标签",
    func = function()
        local checkTab = {}
        for i = 1, #ChipRow do
            table.insert(checkTab, ChipRow[i].isCheck)
        end
        gg.alert(tostring(checkTab))
    end
}

ChipText = {
    composeType = "Text",
    text = "选择登陆渠道"
}

Spacer = {
    composeType = "Spacer",
    height = 4
}

Menu = {
    composeType = "Menu",--文本选择器
    text = "选择菜单",--文本内容
    index = 2,--默认选择项
    func = function(selection)--点击文本选择器后的事件(selection表示表的下标)
        Menu.index = selection--同步下标
        gg.toast(Menu[selection])
    end
}

for i = 1, 5 do
    table.insert(Menu, "菜单选择器"..i)
end

ChipColumn = {
    composeType = "Column",
    Spacer,
    ChipText,
    ChipRow,
    Menu,
    ButtonChip
    
}

--滑动列表(垂直方向)
LazyColumn = {
    composeType = "LazyColumn",
    Column
}

--开关列表(不可滑动)，其他组件也可这样写
SwitchList = {
    composeType = "Column",
    numberButton1,
    numberButton2,
    numberButton3,
    numberButton4,
    numberButton5,
    numberButton6
}
--forCompose(SwitchList, Switch)

--开关列表(可滑动)，套LazyColumn，其他组件也可这样写
SwitchSlider = {
    composeType = "LazyColumn"
}
forCompose(SwitchSlider, Switch)

--折叠列表(可滑动)
ExpandableList = {
    composeType = "LazyColumn",
}
forCompose(ExpandableList, Expandable)

function isFile(path)
    local File = import("java.io.File")
    local newFile = File(path)
    if newFile.exists() then
        return true
    end
end

LazyVerticalGrid = {
    composeType = "LazyVerticalGrid",
    column = 3 --网格列数，这里表示3列
}

scriptConfigurationPath = gg.PATH .. "/AGG/scriptConfiguration/"

if not isFile(scriptConfigurationPath) then
    file.create(scriptConfigurationPath)
end
if not isFile(scriptConfigurationPath .. "items/") then
    if not isFile(scriptConfigurationPath .. "items.zip") then
        gg.toast("首次启动需要下载资源包，正在下载资源包")
        gg.download("https://gitee.com/tianqix/polar_domain_forum/raw/master/items.zip", "/AGG/scriptConfiguration/items.zip")
        gg.download("https://gitee.com/tianqix/polar_domain_forum/raw/master/ids.lua", "/AGG/scriptConfiguration/ids.lua")
    end
    gg.toast("正在解压资包")
    file.unzip(scriptConfigurationPath .. "items.zip", scriptConfigurationPath)
end


id = loadfile(scriptConfigurationPath.."ids.lua")()
ids = {}
for k, v in pairs(id) do
    ids[v.ID] = k
end
itemFiles = file.getFiles(scriptConfigurationPath.."items/")
checkTable = {}
nameTable = {}
isCheckInitialization = false
function buildId(initText)
    LazyVerticalGridNew = {
        composeType = "LazyVerticalGrid",
        column = 3 --网格列数，这里表示3列
    }
    
    table.removeAll(LazyVerticalGrid)
    if initText == "" then
        initText = nil
    end
	for k, v in pairs(itemFiles) do
        local idName = string.match(v.getName(), "^(.-)%.")
        local icon = {
            composeType = "Icon",
            url = v.getAbsolutePath(),
            func = function()
		    	gg.toast(idName)
	    	end
        }
		if ids[idName] then
			idName = ids[idName]
		end
        if not isCheckInitialization then
            checkTable[k] = false
            nameTable[k] = idName
        end
        local textChip = {
            composeType = "Chip",
            text = idName,
            isCheck = checkTable[k],
            func = function(check)
                isCheck = check
                checkTable[k] = check
            end
        }
		local row = {
            composeType = "Row",
            icon,
            textChip
        }
        if not initText then
            table.insert(LazyVerticalGrid, row)
            table.insert(LazyVerticalGridNew, row)
        elseif string.find(idName, initText) then
            
            table.insert(LazyVerticalGridNew, row)
        end
	end
    isCheckInitialization = true
end

SearchTextFiled = {
    composeType = "TextFiled",
    text = "检索物品",
    initialString = "",--默认值，可获取输入框内容
    func = function(text)--输入内容回调函数，可获取输入框内容
        SearchTextFiled.initialString = text
        buildId(text)
        LazyVerticalGrid.update(LazyVerticalGridNew)
    end
}

AllButton = {
    composeType = "Button",
    isWeight = false,
    text = "全选",
    func = function()
        for i = 1 , #checkTable do
            checkTable[i] = true
        end
        buildId(SearchTextFiled.initialString)
        LazyVerticalGrid.update(LazyVerticalGridNew)
    end
}

InvertButton = {
    composeType = "Button",
    isWeight = false,
    text = "反选",
    func = function()
        for i = 1 , #checkTable do
            if checkTable[i] then
                checkTable[i] = false
            else
                checkTable[i] = true
            end
        end
        buildId(SearchTextFiled.initialString)
        LazyVerticalGrid.update(LazyVerticalGridNew)
    end
}

SelectButton = {
    composeType = "Button",
    text = "确定",
    isWeight = false,
    func = function()
        local newName = {}
        for k, v in pairs(checkTable) do
            if v then
                table.insert(newName, nameTable[k])
            end
        end
        gg.alert(tostring(newName))
    end
}

SpacerRow = {
    composeType = "Spacer",
    width = 4
}

SearchRow = {
    composeType = "Row",
    AllButton,
    SpacerRow,
    InvertButton,
    SearchTextFiled,
    SelectButton
}

SearchLazyRow = {
    composeType = "LazyRow",--水平方向的可滑动列表
    spaced = 5,--设置每个列表的间隔
    padding = 5,
    SearchRow,
}

SearchList = {
    composeType = "Column",
    SearchLazyRow,
    LazyVerticalGrid,
}

--注：comoose的Column和Expandable可相互套娃，而LazyColumn里不能套LazyColumn，你可以在最外层放LazyColumn，里面放Column即可

--设置页
Setting = {
    composeType = "Setting"
}

news = "https://www.baidu.com"
bannerUrl = "https://t.alcy.cc/ycy"
--轮播图。title轮播图标题，description轮播图内容，news轮播图点击后跳转的链接
Banner = {
    composeType = "Banner",
    {title = "轮播图标题", description = "轮播图内容", date = "时间", imageUrl = bannerUrl, newsUrl = news},
    {title = "轮播图标题", description = "轮播图内容", date = "时间", imageUrl = "https://c-ssl.duitang.com/uploads/blog/202504/06/aLSOV3o0F0oJYJ8.jpg", newsUrl = news},
    {title = "轮播图标题", description = "轮播图内容", date = "时间", imageUrl = "https://c-ssl.duitang.com/uploads/blog/202504/06/d3S2gAo1SqoY0YA.jpg", newsUrl = news},
    {title = "轮播图标题", description = "轮播图内容", date = "时间", imageUrl = "https://c-ssl.duitang.com/uploads/blog/202504/06/oVSDAeoBIgl1OLQ.jpg", newsUrl = news},
    {title = "轮播图标题", description = "轮播图内容", date = "时间", imageUrl = "https://c-ssl.duitang.com/uploads/blog/202504/06/DWS6N84YId36q6Y.jpg", newsUrl = news}
}

--用户卡片
UserCard = {
    composeType = "UserLabCard",
    hasAccount = false,--卡密是否登录
    nickname = "AGGBeta",--用户名字
    profileUrl = "",--用户头像链接
    cardUrl = bannerUrl,--用户背景链接
    uid = "123456",--用户ID
    func = function()--点击卡密登录的点击回调函数，返回true表示登录成功
        local data = qq.login()
        if data.code ~= 200 then
            return false
        end
        UserCard.nickname = data.data.nickname
        UserCard.profileUrl = data.data.figureurl
        UserCard.uid = data.data.openId
        return true
    end
}

--空白组件，可用作分割线
Spacer = {
    composeType = "Spacer",
    height = 4--设置高度用来占用布局空间，以实现分割线效果
}

UserColumn = {
    composeType = "LazyColumn",
    Banner,
    Spacer,
    UserCard
}

--主界面表，以上所有组件都依赖此界面表
railLayout = {
    main = {
        name = "AGGBeta", --你的名字
        icon = "https://q.qlogo.cn/headimg_dl?dst_uin=758864998&spec=640&img_type=jpg",--你的头像
        banner = UserColumn, --主界面首次打开显示的界面(点击头像也可跳转到此界面)
        selectedPosition = -1
    },
    menus = {--主菜单表
        func = function(position) -- 点击菜单后的回调函数(position是点击的菜单下标，默认从0开始)
            railLayout.main.selectedPosition = position--记录selectedPosition状态
            if position == 4 then
                buildId(SearchTextFiled.initialString)
                if LazyVerticalGrid and LazyVerticalGrid.update then
                    LazyVerticalGrid.update(LazyVerticalGridNew)
                end
            end
        end,
        "垂直布局",--0
        "折叠布局",--1
        "折叠列表",--2
        "测试列表",--3
        "网格列表",--4
        "开关列表",
        "滑动列表",
        "关于设置",
    },
    compose = {--菜单对应的界面表
        Column,
        Expandable,
        ExpandableList,
        ChipColumn,
        SearchList,
        SwitchList,
        SwitchSlider,
        Setting,
    }
}

exited = false
function exit()--关闭悬浮窗后自动执行此函数
    exited = true
    gg.toast("悬浮窗已关闭")
end

function onKeyListener(keyCode)--键盘监听
    gg.toast(keyCode)
    if keyCode == 54 then
        composeUi.setVisible(false)--按下了Z键
    end
end

function onMediaListener(mediaStr)--音量监听
    gg.toast(mediaStr)
    composeUi.setVisible(true)
end

gg.setVisible(false)--隐藏修改器悬浮窗

local serviceMain = import("android.ext.MainService")
local hotPoint = serviceMain.instance.hotPoint
hotPoint.hide()--隐藏修改器悬浮窗图标


composeUi = gg.composeUi(railLayout)--接受表，main入口参数表，menus菜单表，compose界面表
