function init_vars(){
    
    enum states {
        normal,
        jump,
        mach,
        mach2,
        mach3,
        machturn, // machslide?
        climb,
        machcancel, // eat my socks
        hitwall,
        gpound,
        sjump, // !?!??!
        attack,
    }
    move = -4
    global.mach_col1 = make_colour_rgb(96, 208, 72)
    global.mach_col2 = make_colour_rgb(248, 0, 0)
    global.tape = 0
    global.save_ds = ds_list_create()
}