<?php

function generateLinkOrScript($type, $name)
{
  if ($type == 'css') {
    $nameLocal = $name . '-';
  } else {
    $nameLocal = $_SERVER["SERVER_NAME"] != 'localhost' ? $name : $name . '-';
  }

  if ($type == 'css') {
    $html = '<link href="' . get_template_directory_uri() . '/assets/' . $type . '/' . themename_matchFile($nameLocal, 'css') . '" rel="stylesheet">';
  } else {
    $html = '<script defer src="' . get_template_directory_uri() . '/assets/' . $type . '/' . themename_matchFile('index', 'js') . '"></script>';
  }

  return $html;
}

function themename_css()
{
  if ($_SERVER["SERVER_NAME"] != 'localhost') {
    echo generateLinkOrScript('css', 'vendor');
    if (is_singular()) {
      echo generateLinkOrScript('css', 'post');
    } else {
      echo generateLinkOrScript('css', 'index');
    }
  }
}
add_action('wp_head', 'themename_css', 0);


function themename_scripts()
{
  if (is_singular()) {
    echo generateLinkOrScript('js', 'post');
  } else {
    echo generateLinkOrScript('js', 'index');
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
      if (preg_match("/^" . $partOfName . "(.*)" . $folder . "/i", $file, $name)) {
        return $name[0];
      }
    }
  }
  closedir($openHandler);
}
