<?php
/**
 * For ZNBC Roadmap to success
 *
 * @package Nope...
 * @author ZNBC Roadmap to success
 * @since 1.0
 */

/*
 Plugin Name: znbc_robert_plugin_for_bio_1_2
 Plugin URI: https://www.znbc.com
 Description: Description for znbc_robert_plugin_for_bio plugin made ZNBC team. Workshop to improve the author page + new taxonmy named Languages and extension of my edition capabilities for the journalist post_type
 Version: 1.2
 Author:ZNBC
 Author URI: https://znbc.com
 * Text Domain: znbc_robert_plugin_for_bio
 * Domain Path: /languages
 */

/* ### VALUES for the content */
/*

Mumbake Sikambale
Robert Mwanza
Joshua Jere
Elias Soko
Lucky Siwakwi
Brian Mukuma

*/


/* ### JOURNALISTS */
/*
4. Use plural for all post_type and activate for REST API

'show_in_rest' => true,

journalists (post_type)
 */
function custom_post_type_journalist() {
  $labels = array(
  'name'  => 'Journalists', 
  'singular_name' => 'Journalist',
  'menu_name' => 'Journalists',
  'name_admin_bar' => 'Journalists'
  );

  $args = array(
    'label' => 'Journalists',
    'description' => 'This is a journalist content type. ',
    'labels' => $labels,
    // 'supports' => array('title','editor','thumbnail','taxonomies'),
    'supports' => array('title','editor','author', 'excerpt', 'custom-fields', 'revisions', 'thumbnail','taxonomies'),

/*
'title'
'editor' (content)
'author'
'thumbnail' (featured image, current theme must also support post-thumbnails)
'excerpt'
'trackbacks'
'custom-fields'
'comments' (also will see comment count balloon on edit screen)
'revisions' (will store revisions)
'page-attributes' (menu order, hierarchical must be true to show Parent option)
'post-formats' add post formats, see Post Formats

See https://codex.wordpress.org/Function_Reference/register_post_type
*/

    'hierarchical' => true,
    'public' => true,
    'show_ui' => true,
    'show_in_menu' => true,
    'menu_position' => 5,
    'show_in_admin_bar' => true,
    'show_in_nav_menus' => true,
    'can_export' => true,
    'has_archive' => true,      
    'exclude_from_search' => false,
    'publicly_queryable' => true,
    'capability_type' => 'page',
    'query_var' => 'journalists',
    'rewrite' => array( 'slug' => 'journalists'),
    'show_in_rest' => true,
    'menu_icon' => 'dashicons-admin-users', 
    // wp-menu-image dashicons-before dashicons-admin-users
    );
  register_post_type( 'journalists', $args );

}
add_action( 'init', 'custom_post_type_journalist', 0 );
      

/* ### EXPERTISES */
/*
5. define a taxonomy for journalists
Call it expertises (expertises)
 */

function journalist_taxonomy() {
$labels = array(
        'name'              => __( 'Expertises' ),
        'singular_name'     => __( 'Expertise' ),
        'search_items'      => __( 'Search Expertises' ),
        'all_items'         => __( 'All Expertises' ),
        'parent_item'       => __( 'Parent Expertises' ),
        'parent_item_colon' => __( 'Parent Expertises:' ),
        'edit_item'         => __( 'Edit Expertise' ), 
        'update_item'       => __( 'Update Expertise' ),
        'add_new_item'      => __( 'Add Expertises' ),
        'new_item_name'     => __( 'New Expertises' ),
        'menu_name'         => __( 'Expertises' ),
    ); 

       $args = array(
        'labels'            => $labels,
        'public'            =>  true,
        'show_in_rest'      => true,
        'has_archive'       =>  true,
        'hierarchical'      =>  true, 
        'query_var'         => 'expertises',
        'public'            => true,
        'show_ui'           => true,
        'show_admin_column' => true,
        'show_tagcloud'     => true,
        'show_in_nav_menus' =>  true,
        'rewrite'           =>  array('slug' => '/expertises', 'with_front' => true),
    );

      $post_types = array("journalists");
  register_taxonomy( 'expertises', $post_types, $args );
}
add_action( 'init', 'journalist_taxonomy');
  
/* ### LANGUAGES */
/*

- Languages for zambia (Languages, language)
English
Chinyanja
IciBemba
Chitumbuka-Chisenga
Silozi
*/

function journalist_taxonomy_languages() {
$labels = array(
        'name'              => __( 'Languages' ),
        'singular_name'     => __( 'Language' ),
        'search_items'      => __( 'Search Languages' ),
        'all_items'         => __( 'All Languages' ),
        'parent_item'       => __( 'Parent Languages' ),
        'parent_item_colon' => __( 'Parent Languages:' ),
        'edit_item'         => __( 'Edit Language' ), 
        'update_item'       => __( 'Update Language' ),
        'add_new_item'      => __( 'Add Languages' ),
        'new_item_name'     => __( 'New Languages' ),
        'menu_name'         => __( 'Languages' ),
    ); 

       $args = array(
        'labels'            => $labels,
        'public'            =>  true,
        'show_in_rest'      => true,
        'has_archive'       =>  true,
        'hierarchical'      =>  true, 
        'query_var'         => 'languages',
        'public'            => true,
        'show_ui'           => true,
        'show_admin_column' => true,
        'show_tagcloud'     => true,
        'show_in_nav_menus' =>  true,
        'rewrite'           =>  array('slug' => '/languages', 'with_front' => true),
    );

      $post_types = array("journalists");
  register_taxonomy( 'languages', $post_types, $args );
}
add_action( 'init', 'journalist_taxonomy_languages');





 


