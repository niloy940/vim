<?php

class Foo {
	
	//delete inside parenthesis() = di(
	//delete inside '' = di'
	//change something inside "" = ci"
	//select everything inside {} = vi{
	//select everything with {} = va{

	//finding method's defination = ctrl + ]

$name = 'niloy';

$current_working_directory = ":pwd";

$write_quit = ":wq";

$new_tab = ":tabedit";

$close_tab = ":bd";

$switch_between_tabs = " gt ";

$toggle_between_two_buffer = "ctrl + ^";

$previous_buffer = ":bp";

$next_buffer = ":bn";

$close_everything = ":bufdo bd!";

$new_line = "o";

$cen_current_line_cur = "zz";

$top_of_the_file = "gg";

$bottom_of_the_file = " G ";

$ceate_horigental_split = ":sp";

$create_virtical_split = ":vsp";

$split_max_width = "ctrl+w |";

$split_euqil_width = "ctrl+w =";

$dedicated_plugin_management_tool = "VundleVim";

$open_current_file_folder_with_vinegar_pl = " - ";

$create_new_file_with_vinegar_pl = " % ";

$create_new_folder_with_vinegar_pl = " d ";

$delete_file_or_folder_with_vinegar_pl = " D ";

$open_file_tree_sidebar_with_NERDTreePlugin = " ctrl + n ";

$search_file_with_ctrlp_pl = " ctrl + p ";
//if not appears latest created files press <F5> for refresh


$set_up_tags_file_for_search_methods_using_ctags = " ctags -R ";

$site_wide_serach_methods_using_ctags = " :tag method_name";  
//we used shortcut " ,f "
//if multiple methods with same name then: go to next one " :tn ", previous one " :tp "
//list of all mathes: " :ts "



//searching site wide using "silversearcher-ag with ack.vim" plugins
$search_site_wide = " :Ack 'John Doe' "
//normally we can search with /keyword



// for site wide searching and replace used plugin: greplace.vim
// workflow: replacing John Doe to Jane Doe:
// :Gsearch
// John Doe
// * or folder_name/*
// select every lines what we want to replace
// :s/John Doe/Jane Doe
// :Greplace
// hit y for sigle file or a for every file
// :w or :wa for save files
// that's it!



$open_all_code_folds = " za ";

$close_all_the_code_folds = " zc ";

$setup_snippets_for_vim = "garbas/vim-snipmat";
}



