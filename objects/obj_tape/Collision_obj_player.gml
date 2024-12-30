global.tape += 10
if (ds_list_find_index(global.save_ds, id) == -1)
{
    ds_list_add(global.save_ds, id)
}
instance_destroy()