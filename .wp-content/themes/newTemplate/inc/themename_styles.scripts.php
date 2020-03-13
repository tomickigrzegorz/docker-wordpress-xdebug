<?php


function themename_css()
{
		$global = file_get_contents(get_template_directory_uri() . '/assets/css/' . themename_matchFile('styles-', 'css'));
    if (is_singular()) {
        $styles = file_get_contents(get_template_directory_uri() . '/assets/css/' . themename_matchFile('post-', 'css'));
    } else {
        $styles = file_get_contents(get_template_directory_uri() . '/assets/css/' . themename_matchFile('index-', 'css'));
    }

    echo '<style>' . $global . '</style>';
    echo '<style>' . $styles . '</style>';
}
add_action('wp_head', 'themename_css', 0);


function themename_scripts()
{
    echo '<script src="'. get_template_directory_uri() . '/assets/js/' . themename_matchFile('vendor-', 'js') . '" async></script>';
    if (is_singular()) {
		echo '<script src="'. get_template_directory_uri() . '/assets/js/' . themename_matchFile('post-', 'js') . '" async></script>';
	} else {
		echo '<script src="'. get_template_directory_uri() . '/assets/js/' . themename_matchFile('index-', 'js') . '" async></script>';
	}
}
add_action('wp_footer', 'themename_scripts');


/**
 *  Remove default style.
 */
function wps_deregister_styles()
{
	wp_dequeue_style('wp-block-library');
}
add_action('wp_print_styles', 'wps_deregister_styles', 100);

/**
 * Remove global style.css
 */
function themename_remove_default_stylesheet()
{
	wp_deregister_style('themename-style');
}
add_action('wp_enqueue_scripts', 'themename_remove_default_stylesheet', 20);


/**
 * match file name
 */
function themename_matchFile($partOfName, $folder)
{
	$handler = get_template_directory() . '/assets/' . $folder;
	$openHandler = opendir($handler);
	while ($file = readdir($openHandler)) {
		if ($file !== '.' && $file !== '..') {
			if (preg_match("/^" . $partOfName . "\w+.(" . $folder . ")/i", $file, $name)) {
				return $name[0];
			}
		}
	}
	closedir($openHandler);
}