<?php
/**
 * For ZNBC Roadmap to success
 *
 * @package Nope...
 * @author ZNBC Roadmap to success
 * @since 1.0
 */

/*
 Plugin Name: znbc_robert_plugin_for_bio_1_1
 Plugin URI: https://www.znbc.com
 Description: Description for znbc_robert_plugin_for_bio plugin made ZNBC team. Workshop to improve the author page.
 Version: 1.1
 Author:ZNBC
 Author URI: https://znbc.com
 * Text Domain: znbc_robert_plugin_for_bio
 * Domain Path: /languages
 */
/*

Mumbake Sikambale
Robert Mwanza
Joshua Jere
Elias Soko
Lucky Siwakwi
Brian Mukuma

*/



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
    'supports' => array('title','editor','thumbnail','taxonomies'),
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
  







 


