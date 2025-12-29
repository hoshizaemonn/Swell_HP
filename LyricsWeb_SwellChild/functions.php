<?php
/* 子テーマのfunctions.phpは、親テーマのfunctions.phpより先に読み込まれます。 */

/**
 * 親テーマのCSSを読み込む
 */
add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles' );
function theme_enqueue_styles() {
	wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );
}

/* ここから下にカスタマイズのコードを記述してください */


