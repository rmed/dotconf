elements = {
    -- top left HUD

    -- rootfs
    {
        -- underline
        kind = 'line',
        from = {x=70, y=34},
        to = {x=200, y=34},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 14
    },

    {
        -- left line end
        kind = 'line',
        from = {x=69, y=29},
        to = {x=69, y=39},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 2
    },

    {
        -- right line end
        kind = 'line',
        from = {x=201, y=29},
        to = {x=201, y=39},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 2
    },

    {
        kind = 'bar_graph',
        from = {x=70, y=34},
        to = {x=200, y=34},
        conky_value = 'fs_free_perc /',

        max_value = 100,
        critical_threshold = 10,

        background_color = 0xFFFFFF,
        background_alpha = 0,
        background_thickness = 10,

        background_color_critical = 0xFFFFFF,

        bar_color = 0x56BC1E,
        bar_alpha = 1,
        bar_thickness = 10,

        bar_color_critical = 0x76BA27,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    -- end rootfs

    -- datafs
    {
        -- underline
        kind = 'line',
        from = {x=70, y=84},
        to = {x=200, y=84},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 14
    },

    {
        -- left line end
        kind = 'line',
        from = {x=69, y=79},
        to = {x=69, y=89},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 2
    },

    {
        -- right line end
        kind = 'line',
        from = {x=201, y=79},
        to = {x=201, y=89},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 2
    },

    {
        kind = 'bar_graph',
        from = {x=70, y=84},
        to = {x=200, y=84},
        conky_value = 'fs_free_perc /media/data',

        max_value = 100,
        critical_threshold = 10,

        -- background_color = 0x50433D,
        background_color = 0xFFFFFF,
        background_alpha = 0,
        background_thickness = 10,

        background_color_critical = 0xFFFFFF,

        bar_color = 0xDF0009,
        bar_alpha = 1,
        bar_thickness = 10,

        bar_color_critical = 0x76BA27,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    -- end datafs

    -- CPU usage

    {
        -- CPU 0
        kind = 'bar_graph',
        from = {x=625, y=80},
        to = {x=680, y=25},
        conky_value = 'cpu cpu0',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0x292929,
        background_alpha = 0.4,
        background_thickness = 5,

        background_color_critical = 0x292929,

        bar_color = 0x000000,
        bar_alpha = 1,
        bar_thickness = 5,

        bar_color_critical = 0x292929,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    {
        kind = 'line',
        from = {x=630, y=20},
        to = {x=660, y=41},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=630, y=20},
        to = {x=600, y=20},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        -- CPU 4
        kind = 'bar_graph',
        from = {x=640, y=80},
        to = {x=680, y=40},
        conky_value = 'cpu cpu4',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0x292929,
        background_alpha = 0.4,
        background_thickness = 5,

        background_color_critical = 0x292929,

        bar_color = 0x000000,
        bar_alpha = 1,
        bar_thickness = 5,

        bar_color_critical = 0x292929,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    {
        kind = 'line',
        from = {x=615, y=45},
        to = {x=648, y=68},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=615, y=45},
        to = {x=585, y=45},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        -- CPU 1
        kind = 'bar_graph',
        from = {x=683, y=25},
        to = {x=738, y=80},
        conky_value = 'cpu cpu1',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0x292929,
        background_alpha = 0.4,
        background_thickness = 5,

        background_color_critical = 0x292929,

        bar_color = 0x000000,
        bar_alpha = 1,
        bar_thickness = 5,

        bar_color_critical = 0x292929,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    {
        kind = 'line',
        from = {x=733, y=20},
        to = {x=703, y=41},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=733, y=20},
        to = {x=763, y=20},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        -- CPU 5
        kind = 'bar_graph',
        from = {x=683, y=40},
        to = {x=723, y=80},
        conky_value = 'cpu cpu5',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0x292929,
        background_alpha = 0.4,
        background_thickness = 5,

        background_color_critical = 0x292929,

        bar_color = 0x000000,
        bar_alpha = 1,
        bar_thickness = 5,

        bar_color_critical = 0x292929,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    {
        kind = 'line',
        from = {x=748, y=45},
        to = {x=715, y=69},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=748, y=45},
        to = {x=778, y=45},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        -- CPU 2
        kind = 'bar_graph',
        from = {x=738, y=83},
        to = {x=683, y=140},
        conky_value = 'cpu cpu2',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0x292929,
        background_alpha = 0.4,
        background_thickness = 5,

        background_color_critical = 0x292929,

        bar_color = 0x000000,
        bar_alpha = 1,
        bar_thickness = 5,

        bar_color_critical = 0x292929,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    {
        kind = 'line',
        from = {x=733, y=150},
        to = {x=703, y=122},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=733, y=150},
        to = {x=763, y=150},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        -- CPU 6
        kind = 'bar_graph',
        from = {x=723, y=83},
        to = {x=683, y=123},
        conky_value = 'cpu cpu6',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0x292929,
        background_alpha = 0.4,
        background_thickness = 5,

        background_color_critical = 0x292929,

        bar_color = 0x000000,
        bar_alpha = 1,
        bar_thickness = 5,

        bar_color_critical = 0x292929,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    {
        kind = 'line',
        from = {x=748, y=120},
        to = {x=715, y=94},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=748, y=120},
        to = {x=778, y=120},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        -- CPU 3
        kind = 'bar_graph',
        from = {x=680, y=140},
        to = {x=625, y=83},
        conky_value = 'cpu cpu3',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0x292929,
        background_alpha = 0.4,
        background_thickness = 5,

        background_color_critical = 0x292929,

        bar_color = 0x000000,
        bar_alpha = 1,
        bar_thickness = 5,

        bar_color_critical = 0x292929,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    {
        kind = 'line',
        from = {x=630, y=150},
        to = {x=660, y=122},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=630, y=150},
        to = {x=600, y=150},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },


    {
        -- CPU 7
        kind = 'bar_graph',
        from = {x=680, y=123},
        to = {x=640, y=83},
        conky_value = 'cpu cpu7',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0x292929,
        background_alpha = 0.4,
        background_thickness = 5,

        background_color_critical = 0x292929,

        bar_color = 0x000000,
        bar_alpha = 1,
        bar_thickness = 5,

        bar_color_critical = 0x292929,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    {
        kind = 'line',
        from = {x=615, y=120},
        to = {x=648, y=94},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=615, y=120},
        to = {x=585, y=120},

        color = 0x292929,
        alpha = 0.8,
        thickness = 1
    },

    -- vertices

    -- {
    --     -- join 0 and 1
    --     kind = 'line',
    --     from = {x=680, y=25},
    --     to = {x=683, y=22},

    --     color = 0x292929,
    --     alpha = 0.4,
    --     thickness = 5
    -- },

    -- {
    --     -- join 1 and 2
    --     kind = 'line',
    --     from = {x=738, y=80},
    --     to = {x=741, y=83},

    --     color = 0x292929,
    --     alpha = 0.4,
    --     thickness = 5
    -- },

    -- {
    --     -- join 2 and 3
    --     kind = 'line',
    --     from = {x=683, y=140},
    --     to = {x=680, y=143},

    --     color = 0x292929,
    --     alpha = 0.4,
    --     thickness = 5
    -- },

    -- {
    --     -- join 3 and 1
    --     kind = 'line',
    --     from = {x=625, y=83},
    --     to = {x=622, y=80},

    --     color = 0x292929,
    --     alpha = 0.4,
    --     thickness = 5
    -- },

    -- {
    --     -- join 4 and 5
    --     kind = 'line',
    --     from = {x=680, y=40},
    --     to = {x=683, y=37},

    --     color = 0x292929,
    --     alpha = 0.4,
    --     thickness = 5
    -- },

    -- {
    --     -- join 5 and 6
    --     kind = 'line',
    --     from = {x=723, y=80},
    --     to = {x=726, y=83},

    --     color = 0x292929,
    --     alpha = 0.4,
    --     thickness = 5
    -- },

    -- {
    --     -- join 6 and 7
    --     kind = 'line',
    --     from = {x=683, y=123},
    --     to = {x=680, y=126},

    --     color = 0x292929,
    --     alpha = 0.4,
    --     thickness = 5
    -- },

    -- {
    --     -- join 7 and 0
    --     kind = 'line',
    --     from = {x=640, y=83},
    --     to = {x=637, y=80},

    --     color = 0x292929,
    --     alpha = 0.4,
    --     thickness = 5
    -- },

    -- end CPU usage

    -- RAM usage
    {
        -- underline
        kind = 'line',
        from = {x=70, y=174},
        to = {x=270, y=174},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 14
    },

    {
        -- left line end
        kind = 'line',
        from = {x=69, y=169},
        to = {x=69, y=179},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 2
    },

    {
        -- right line end
        kind = 'line',
        from = {x=271, y=169},
        to = {x=271, y=179},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 2
    },

    {
        kind = 'bar_graph',
        from = {x=70, y=174},
        to = {x=270, y=174},
        conky_value = 'memperc',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0xFFFFFF,
        background_alpha = 0,
        background_thickness = 10,

        background_color_critical = 0xFFFFFF,

        bar_color = 0x099CCF,
        bar_alpha = 1,
        bar_thickness = 10,

        bar_color_critical = 0xDF0009,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    -- end RAM usage

    -- swap usage
    {
        -- underline
        kind = 'line',
        from = {x=70, y=224},
        to = {x=270, y=224},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 14
    },

    {
        -- left line end
        kind = 'line',
        from = {x=69, y=219},
        to = {x=69, y=229},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 2
    },

    {
        -- right line end
        kind = 'line',
        from = {x=271, y=219},
        to = {x=271, y=229},

        -- color = 0x352B22,
        color = 0xFFFFFF,
        alpha = 0.75,
        thickness = 2
    },

    {
        kind = 'bar_graph',
        from = {x=70, y=224},
        to = {x=270, y=224},
        conky_value = 'swapperc',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0xFFFFFF,
        background_alpha = 0,
        background_thickness = 10,

        background_color_critical = 0xFFFFFF,

        bar_color = 0xE96425,
        bar_alpha = 1,
        bar_thickness = 10,

        bar_color_critical = 0xDF0009,

        change_color_on_critical = true,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    -- end swap usage

    -- top 3 memory processes
    {
        -- vertical line
        kind = 'line',
        from = {x=30, y=265},
        to = {x=30, y=340},

        color = 0xFFFFFF,
        alpha = 1,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=30, y=285},
        to = {x=50, y=285},

        color = 0xFFFFFF,
        alpha = 1,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=30, y=312},
        to = {x=50, y=312},

        color = 0xFFFFFF,
        alpha = 1,
        thickness = 1
    },

    {
        kind = 'line',
        from = {x=30, y=340},
        to = {x=50, y=340},

        color = 0xFFFFFF,
        alpha = 1,
        thickness = 1
    },

    -- end top 3

    -- network

    -- wlan0
    {
        kind = 'ring',
        center = {x=1090, y=230},
        radius = 2,
        thickness = 5,

        color = 0xFFFFFF,
        alpha = 1
    },

    {
        kind = 'ring',
        center = {x=1090, y=230},
        radius = 12,
        thickness = 5,

        color = 0xFFFFFF,
        alpha = 1,

        start_angle = 270,
        end_anble = 190
    },

    {
        kind = 'ring',
        center = {x=1090, y=230},
        radius = 22,
        thickness = 5,

        color = 0xFFFFFF,
        alpha = 1,

        start_angle = 270,
        end_anble = 190
    },

    -- end wlan0

    -- eth0
    {
        kind = 'line',
        from = {x=1240, y=210},
        to = {x=1240, y=222},

        color = 0xFFFFFF,
        alpha = 1,
        thickness = 2
    },

    {
        kind = 'line',
        from = {x=1230, y=222},
        to = {x=1250, y=222},

        color = 0xFFFFFF,
        alpha = 1,
        thickness = 2
    },

    {
        kind = 'line',
        from = {x=1235, y=222},
        to = {x=1235, y=234},

        color = 0xFFFFFF,
        alpha = 1,
        thickness = 2
    },

    {
        kind = 'line',
        from = {x=1245, y=222},
        to = {x=1245, y=234},

        color = 0xFFFFFF,
        alpha = 1,
        thickness = 2
    },

    -- end eth0
    -- end network

    -- battery
    {
        kind = 'bar_graph',
        from = {x=520, y=230},
        to = {x=830, y=230},
        conky_value = 'if_existing /sys/class/power_supply/BAT0/present}${battery_percent BAT0}${else}0${endif',

        max_value = 100,
        critical_threshold = 90,

        background_color = 0x292929,
        background_alpha = 0.2,
        background_thickness = 8,

        bar_color = 0x000000,
        bar_alpha = 0.4,
        bar_thickness = 8,

        change_color_on_critical = false,
        change_alpha_on_critical = false,
        change_thickness_on_critical = false
    },

    -- end battery

}
