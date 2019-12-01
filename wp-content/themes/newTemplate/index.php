<?php

get_header();


echo '<main id="main" class="container" role="main">';

if (have_posts()) :
    while (have_posts()) : the_post();

if (is_home()) {

?>

    <h2><a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h2>

<?php

    $content = get_the_content('[ see more ]');
    $trimmed_content = wp_trim_words($content, 100, '');
    echo $content;

} else {
    
?>

    <h1><?php the_title(); ?></h1>

<?php

    if (is_single()) {
        previous_post_link();
        next_post_link();
    }
    the_content();

}
endwhile;

the_posts_pagination(array(
    'screen_reader_text' => ('&nbsp;')
));

else :
    echo '<p>No posts</p>';

endif;


echo '</main>';

// get_sidebar();

get_footer();

?>