<?php

class Foo {
	
	//delete inside parenthesis() = di(
	//delete inside '' = di'
	//change something inside "" = ci"
	//select everything inside {} = vi{
	//select everything with {} = va{
	//select everything with tag <script> = vat
	//delete everything inside tag <style> = dit
	//copy word= yiw

	//finding method's defination = ctrl + ]

$name = 'niloy';

$current_working_directory = ":pwd";

$write_quit = ":wq";

$new_tab = ":tabedit";

$close_tab = ":bd";

$switch_between_tabs = " gt ";

$toggle_between_two_buffer = "ctrl + 6";

$previous_buffer = ":bp";

$next_buffer = ":bn";

$close_everything = ":bufdo bd!";

$new_line = "o";

$go_to_end_of_the_line_and_insert_mode = "A";

$go_to_end_the_line = " $ ";

$go_to_start_of_the_line = " ^ "

$delete_line_and_insert_mode = "S";

$copy_a_line = "y";

$paste = "p";

$copy_and_paste_to_the_next_line = "yyp";

$repeat_last_operation = " . ";
//for pasting again same line many times just hit:  . 

$cut_the_line = "C"

$join_two_line = " J ";

$go_top_of_window = "H";

$go_bottom_of_window = "L";

$go_to_next_word = "w";

$back_previous_word = "b";

$select_line = "V";

$go_down = "ctrl + d";

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
//we can also do like this: ctags -R --exclude=node_modules|vendor


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
//we used shortcut to create snippets " ,es "


$change_surrounding_parentheses_bracketsORquotes = "tpope/vim-surround";
// change "" to '' = cs"'     				//change surroundings "" to ''
// remove the delimiters("") entirely = ds"
// change surrounding tags in html like <div> = cst
// remove surrounding tags in html like <span> = dst
// add sourroundings = select with v then press S


$updated_systex_file_for_php = "StanAngeloff/php.vim";

$auto_update_use_statment_top_of_the_class = "arnaud-lb/vim-php-namespace";
//we used shortcut: ,u and ,uf
//shortcut for sorting use statments: select all then  ,su

$auto_completion_with_tab = "ervandew/supertab";

$mark_a_position_with_M = " mM ";
//A mark allows you to record your current position so you can return to it later.
//to jupm to the mark = 'M
//to jupm exact cursor position = `M
//for jumping different files always use capital latter for marking like: M
//to delete line in a file: mark with mn then delete = d'n
//for selecting = v'n
//all marks list = :marks

}


