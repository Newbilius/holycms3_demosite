<? if (!defined('HCMS')) die(); ?>
<!DOCTYPE html>
<html>
<head>
<meta name="keywords" content="<?=$_OPTIONS['keywords']?>" />
<title><?=$_OPTIONS['site_title']?></title>
<meta name="description" content="<?=$_OPTIONS['description']?>">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />	
<script type="text/javascript" src="/engine/js/jquery.1.7.2.min.js"></script>
<script type="text/javascript" src="/engine/js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript" src="/engine/js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="/engine/js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<script src="/engine/js/bootstrap/js/bootstrap.min.js"></script>
<link rel="alternate" type="application/rss+xml" title="Тестовая RSS тестового сайта " href="/rss/" />
<? PopUpImages();?>
<?=$_OPTIONS['header_code']?>
</head>
<style>
        <style type="text/css">

      /* Sticky footer styles
      -------------------------------------------------- */

      html,
      body {
        height: 100%;
        /* The html and body elements cannot have any padding or margin. */
      }

      /* Wrapper for page content to push down footer */
      #wrap {
        min-height: 100%;
        height: auto !important;
        height: 100%;
        /* Negative indent footer by it's height */
        margin: 0 auto -60px;
      }

      /* Set the fixed height of the footer here */
      #push,
      #footer {
        height: 30px;
      }
      #footer {
        background-color: #f5f5f5;
      }

      /* Lastly, apply responsive CSS fixes as necessary */
      @media (max-width: 767px) {
        #footer {
          margin-left: -20px;
          margin-right: -20px;
          padding-left: 20px;
          padding-right: 20px;
        }
      }

    </style>
    </style>