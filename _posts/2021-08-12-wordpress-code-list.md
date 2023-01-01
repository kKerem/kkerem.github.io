---
title: WordPress Code List
tags:
  - HTML
  - PHP
---


I collected the parameters I used while creating a WordPress theme on one page. This content contains codes suitable for general use and includes all the necessary general codes when creating a theme. To help others as a WordPress lover...

&nbsp;
<b class="small mt-3 d-block">Title parameter</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php
    global $page, $paged;
    bloginfo( 'name' );
    wp_title( '»', true, 'left' );
    $site_description = get_bloginfo( 'description', 'display' );
    if ( $site_description &amp;&amp; ( is_home() || is_front_page() ) )
        echo " » $site_description";
    if ( $paged --&gt;= 2 || $page &gt;= 2 )
        echo ' » ' . sprintf( __( 'Page %s', 'twentyten' ), max( $paged, $page ) );
?&gt;</code></pre>
<b class="small mt-3 d-block">Blog name</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php bloginfo('name'); ?&gt;</code></pre>
<b class="small mt-3 d-block">Blog address</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php bloginfo('url'); ?&gt;</code></pre>
<b class="small mt-3 d-block">CSS file</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php bloginfo('stylesheet_url'); ?&gt;</code></pre>
<b class="small mt-3 d-block">Theme path</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php bloginfo('template_url'); ?&gt;</code></pre>
<b class="small mt-3 d-block">Call header.php</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php get_header(''); ?&gt;</code></pre>
<b class="small mt-3 d-block">Call sidebar.php</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php get_sidebar(''); ?&gt;</code></pre>
<b class="small mt-3 d-block">Call footer.php</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php get_footer(''); ?&gt;</code></pre>
<b class="small mt-3 d-block">Tag ends</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">/*  before */
&lt;?php wp_head(); ?&gt;

/* to end  */
&lt;?php wp_footer(); ?&gt;</code></pre>
<b class="small mt-3 d-block">Page template</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php /* Template Name: Page Name */ ?&gt;</code></pre>
<b class="small mt-3 d-block">Theme style text</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">/*
Theme Name: 
Theme URI: 
Description: 
Author: 
Author URI: 
Version: 1.0
*/</code></pre>
<h6 class="heading small pt-4 mb-3 mb-lg-3 text-body">Menu Contexts</h6>
<b class="small mt-3 d-block">Lists pages</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php wp_list_pages('title_li='); ?&gt;</code></pre>
<b class="small mt-3 d-block">Removing certain pages from the menu</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php wp_list_pages('exclude=id&amp;title_li='); ?&gt;</code></pre>
<b class="small mt-3 d-block">Lists only pages with entered IDs</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php wp_list_pages('include=id,id&amp;title_li='); ?&gt;</code></pre>
<b class="small mt-3 d-block">List categories</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php wp_list_cats('title_li='); ?&gt;</code></pre>
<b class="small mt-3 d-block">Category listing (custom menu)</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php 
    $category_ids = get_all_category_ids();
    foreach($category_ids as $cat_id) {
        $cat_name = get_cat_name($cat_id);
        $category_url = get_category_link($cat_id);
        echo '&lt;a href="'.$category_url.'"&gt;&lt;li class="list-group-item"&gt;' . $cat_name . '&lt;/li&gt;&lt;/a&gt;';
    }
?&gt;</code></pre>
<h6 class="heading small pt-4 mb-3 mb-lg-3 text-body">Content Contexts</h6>
<b class="small mt-3 d-block">While loop</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php while(have_posts()) the_post(); ?&gt;
    //content
&lt;?php endwhile; ?&gt;</code></pre>
<b class="small mt-3 d-block">Category name on category page</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php printf( __( '%s', 'solopine' ), single_cat_title( '', false ) ); ?&gt;</code></pre>
<b class="small mt-3 d-block">Category description on category page</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php echo category_description(); ?&gt;</code></pre>
<b class="small mt-3 d-block">Image of the post (Adding a class to the post Thumbnail)</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php echo get_the_post_thumbnail( $post_id, 'thumbnail', array('class' =&gt; 'img-responsive img-circle post-image')); ?&gt;</code></pre>
<b class="small mt-3 d-block">List the articles belonging to the category</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php if (have_posts()) ?&gt;
&lt;?php $query = new WP_Query("cat=1&amp;showposts=10"); while($query-&gt;have_posts()) $query-&gt;the_post();?&gt; 
//content
&lt;?php endwhile; ?&gt;
&lt;?php endif; ?&gt;</code></pre>
<b class="small mt-3 d-block">Latest articles</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php query_posts('showposts=10'); ?&gt;
<b class="small mt-3 d-block">&lt;?php while (have_posts()) the_post();?&gt;
// content
&lt;?php endwhile;?&gt;
&lt;?php wp_reset_query(); ?&gt;</b></code></pre>
<b class="small mt-3 d-block">Post title</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_title(''); ?&gt;</code></pre>
<b class="small mt-3 d-block">Post address</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_permalink('') ?&gt;</code></pre>
<b class="small mt-3 d-block">Post category</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_category(', ') ?&gt;</code></pre>
<b class="small mt-3 d-block">Post category – HTML</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php foreach((get_the_category()) as $category) { echo $category-&gt;cat_name . ', '; } ?&gt;</code></pre>
<b class="small mt-3 d-block">Text content</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_content(''); ?&gt;</code></pre>
<b class="small mt-3 d-block">Text content limit</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php echo wp_trim_words( get_the_content(), 40, '...' );?&gt;</code></pre>
<b class="small mt-3 d-block">Posting Time of the Article</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_time('H:i:s'); ?&gt;</code></pre>
<b class="small mt-3 d-block">Number of comments on the article</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php comments_popup_link(__('No comment'), __('1 comment'), __('% comments'), '', __('Comments closed')); ?&gt;</code></pre>
<b class="small mt-3 d-block">Post read count (requires WP-PostViews plugin)</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php if(function_exists('the_views')) { the_views(); } ?&gt;</code></pre>
<b class="small mt-3 d-block">Text ID</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_ID(); ?&gt;</code></pre>
<b class="small mt-3 d-block">Post edit link</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php edit_post_link(); ?&gt;</code></pre>
<b class="small mt-3 d-block">Comment template</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php comments_template(); ?&gt;</code></pre>
<h6 class="heading small pt-4 mb-3 mb-lg-3 text-body">Author contexts</h6>
<b class="small mt-3 d-block">Author name</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_author(''); ?&gt;</code></pre>
<b class="small mt-3 d-block">About the author</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_author_description(''); ?&gt;</code></pre>
<b class="small mt-3 d-block">Author name</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_author_firstname(''); ?&gt;</code></pre>
<b class="small mt-3 d-block">Author surname</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_author_lastname(''); ?&gt;</code></pre>
<b class="small mt-3 d-block">Number of articles by the author</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_author_posts('');?&gt;</code></pre>
<b class="small mt-3 d-block">Author page link</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_author_link('');?&gt;</code></pre>
<b class="small mt-3 d-block">Author's website</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_author_url(''); ?&gt;</code></pre>
<b class="small mt-3 d-block">Author's e-mail address</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php the_author_email('');?&gt;</code></pre>
<h6 class="heading small pt-4 mb-3 mb-lg-3 text-body">Extra contexts</h6>
<b class="small mt-3 d-block">Special menu</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">// Functions
add_action('init', 'theme_menus');
function theme_menus() {
    register_nav_menus(
        array(
        'anamenu' =&gt; __('Primary Menu'),
        'sagmenu' =&gt; __('Side Menu')
        )
    );
}
// Calling menu
wp_nav_menu( array( 'container_id' =&gt; 'submenu', 'theme_location' =&gt; 'anamenu','menu_class'=&gt;'sf-menu','fallback_cb'=&gt; 'fallbackmenu' ) );</code></pre>
<b class="small mt-3 d-block">Adding elements to the beginning or end of a custom menu</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">// Add the Homepage link to the beginning of the menu elements
function menu_ekleme($content) {
    $content = '&lt;li class="current colordefault home_class"glt;&lt;a href="index.html"glt;&lt;i class="icon-home"glt;&lt;/iglt;&lt;/aglt;&lt;/liglt;' . $content;
    return $content;
}
add_filter('wp_nav_menu_anamenu_items', 'menu_ekleme');</code></pre>
<b class="small mt-3 d-block">Calling the photo uploaded specifically to the ID</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">function valuePhoto($photoID){
    $imageSrc = $photoID;
    if (is_numeric($photoID)) {
        $imageAttachment = wp_get_attachment_image_src($photoID,'full');
        $imageSrc = $imageAttachment[0];
        return $imageSrc;
    }
}</code></pre>
<b class="small mt-3 d-block">Uninstalling the WordPress toolbar (functions.php)</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">/* Disable the admin bar feature */
    add_filter( 'show_admin_bar', '__return_false' );
      
    /* Remove Admin Bar options from user profile */
    remove_action( 'personal_options', '_admin_bar_preferences' );</code></pre>
<b class="small mt-3 d-block">Calling custom field tag to page</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php echo get_post_meta($post-&gt;ID, "ozel_alan_etiketi", true); ?&gt;</code></pre>
<b class="small mt-3 d-block">Next post</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php next_post_link('') ?&gt;</code></pre>
<b class="small mt-3 d-block">Front text</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php previous_post_link('') ?&gt;</code></pre>
<b class="small mt-3 d-block">Featured image use</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">/* Inside the while loop */
    &lt;?php if ( has_post_thumbnail() ) {the_post_thumbnail();} else {}?&gt;
  
/* will be added in funtions.php */
    add_theme_support( 'post-thumbnails' );
    set_post_thumbnail_size( 125, 125 );</code></pre>
<b class="small mt-3 d-block">Quoting part – using the expert</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">/* Inside While Loop */
    &lt;?php the_excerpt(''); ?&gt;
  
    /* will be added in functions.php */
    function new_excerpt_length($length) {
    return 12;
    }
    add_filter('excerpt_length', 'new_excerpt_length');</code></pre>
<b class="small mt-3 d-block">Search form</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;form method="get" id="searchform" action="&lt;?php bloginfo('url'); ?&gt;"&gt;
    &lt;input class="searchbg" type="text" name="s" id="s" onfocus="if (this.value == 'Ara ...') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Ara ...';}"&gt;
    &lt;input class="button" type="button" value=""&gt;
&lt;/form&gt;</code></pre>
<b class="small mt-3 d-block">Pagination (Pagenavi plugin)</b>
<pre class="mb-0 mt-2"><code class="language-php d-block shadow-none">&lt;?php wp_pagenavi(); ?&gt;</code></pre>