if (fadein == false)
    alpha += 0.1
else if (fadein == true)
    alpha -= 0.1
if (fadein == true && fadealpha < 0) instance_destroy()