<footer class="footer container">
    <h3>FOOTER</h3>
</footer>
<script>
    console.log('test');
</script>

<?php
    wp_footer();
?>

<?php
// get_template_part('template-parts/layout');
// https://developer.wordpress.org/reference/functions/get_template_part/

// if     ( is_embed()          && $template = get_embed_template()          ) :
// 	elseif ( is_404()            && $template = get_404_template()            ) :
// 	elseif ( is_search()         && $template = get_search_template()         ) :
// 	elseif ( is_front_page()     && $template = get_front_page_template()     ) :
// 	elseif ( is_home()           && $template = get_home_template()           ) :
// 	elseif ( is_post_type_archive() && $template = get_post_type_archive_template() ) :
// 	elseif ( is_tax()            && $template = get_taxonomy_template()       ) :
// 	elseif ( is_attachment()     && $template = get_attachment_template()     ) :
// 		remove_filter('the_content', 'prepend_attachment');
// 	elseif ( is_single()         && $template = get_single_template()         ) :
// 	elseif ( is_page()           && $template = get_page_template()           ) :
// 	elseif ( is_singular()       && $template = get_singular_template()       ) :
// 	elseif ( is_category()       && $template = get_category_template()       ) :
// 	elseif ( is_tag()            && $template = get_tag_template()            ) :
// 	elseif ( is_author()         && $template = get_author_template()         ) :
// 	elseif ( is_date()           && $template = get_date_template()           ) :
// 	elseif ( is_archive()        && $template = get_archive_template()        ) :


    // function themename_scripts() {
    //     wp_register_script( 'themename-home', get_template_directory_uri() . '/dist/home.bundle.js', array(), date("H:i:s"), true );
    //     wp_register_script( 'themename-main', get_template_directory_uri() . '/dist/main.bundle.js', array(), date("H:i:s"), true );
    
    //     if(is_front_page()){
    //         wp_enqueue_style( 'themename-home-style', get_template_directory_uri() . '/dist/css/home.css', array(), date("H:i:s"));
    //         wp_enqueue_script('themename-home');
    //     } else {
    //         wp_enqueue_style( 'themename-style', get_template_directory_uri() . '/dist/css/main.css', array(), date("H:i:s"));
    //         wp_enqueue_script('themename-main');
    //     }
    // }
    // add_action( 'wp_enqueue_scripts', 'themename_scripts' );

?>


</body>
</html>