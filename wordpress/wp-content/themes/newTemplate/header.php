<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">

<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Janina porazinska <?php wp_title('|', true, 'left'); ?></title>
  <link rel="profile" href="http://gmpg.org/xfn/11">
  <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
  <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" />
  <?php wp_head(); ?>
</head>

<body>

  <header class="header container">
    <div class="header-logo"></div>
    <?php

    wp_nav_menu(array('theme_location' => 'header-menu'));

    ?>
  </header>