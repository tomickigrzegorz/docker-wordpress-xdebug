<?php

function disable_head_elements()
{
    remove_action('wp_head', 'wp_generator');
    remove_action('wp_head', 'wlwmanifest_link');
    remove_action('wp_head', 'rsd_link');

    remove_action('wp_head', 'print_emoji_detection_script', 7);
    remove_action('admin_print_scripts', 'print_emoji_detection_script');
    remove_action('wp_print_styles', 'print_emoji_styles');
    remove_action('admin_print_styles', 'print_emoji_styles');

    remove_action('template_redirect', 'rest_output_link_header', 11, 0);

    remove_action('template_redirect', 'rest_output_link_header', 11, 0);
    remove_action('wp_head', 'rest_output_link_wp_head', 10);

    add_filter('emoji_svg_url', '__return_false');
}
add_action('after_setup_theme', 'disable_head_elements');



function hook_critical_css()
{
    if (is_home()) {
        $script = 'blog.css';
    } elseif (is_front_page()) {
        $script = 'home.css';
    } elseif (is_page('kontakt')) {
        $script = 'contact.css';
    } else {
        $script = 'other.css';
    }

    $filePath = plugin_dir_path( __FILE__ ) . '/assets/css/' . $script;
    $fileContents = file_get_contents($filePath);
    echo '<style>' . $fileContents . '</style>';
}
add_action('wp_head', 'hook_critical_css');


function themename_scripts()
{
    if (is_home()) {
        $script = 'blog.js';
    } elseif (is_front_page()) {
        $script = 'home.js';
    } elseif (is_page('kontakt')) {
        $script = 'contact.js';
    } else {
        $script = 'other.js';
    }
    wp_enqueue_script('mytheme-common', get_template_directory_uri() . '/assets/js/' . $script);
}
add_action('wp_footer', 'themename_scripts');