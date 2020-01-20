<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'data_base_wordpress' );

/** MySQL database username */
define( 'DB_USER', 'my_admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'GgNBfQR&&lD6bz(O+o_ a3L+~jGJQAD`^G3PtMqV?#arHCx_BCr<f;6aW.0~Z D-' );
define( 'SECURE_AUTH_KEY',  'cGJA2v~kp:E/(twl+,m(^`vzWJ{a]=|xGGQlmOwhCT25,upwb*|7y9tb:QUXospJ' );
define( 'LOGGED_IN_KEY',    '&OBH)BIxR-rqbKX]F~bhPq<I}$r&gibyatHl14]<d~<+ MQY4U -aAO0:l/^X@4!' );
define( 'NONCE_KEY',        'NE%sm0}}!8FA&?17z1osv7q;%CqfJwhF5?]yHmV{Z-j/ACVRB r3VFH*}ItTOa V' );
define( 'AUTH_SALT',        'Zw1/nu[URs&8Zk/!IZeUn1?cuSFO;?H6Qlsm55KLnVD#7;K>3-&?>~Ui[;/KK<[v' );
define( 'SECURE_AUTH_SALT', 'zp/#|&`olznnT 9sM/Aws8MB7;c7[6E{|tk,Fn<o:SXP`f&%X2Oa{KQbY`rx%(.U' );
define( 'LOGGED_IN_SALT',   'e~t`|^NAQ,rP;Tz2y=uLlo-=xqORf2o}si({zP Jo$s!*.E5D?I?M_1Y?orqb5 M' );
define( 'NONCE_SALT',       '?TZCr3~A9u 6s4olxt^R__-2AUix^0+laWb2d-<3g~F%~hS2|ry8[s.Q,IActwIj' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
