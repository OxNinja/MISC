<?php
# your path to Requests.php library
$requests_path = "Requests/library/Requests.php";
require_once($requests_path);
Requests::register_autoloader();

# your Root-Me id here
$id = "0xNinja";

$score = "?inc=score";
$url = "https://www.root-me.org/";
$url_score = $url.$id.$score;

# make a request to your Root-Me score page
$r = Requests::get($url_score);
$t = $r -> body;

# regexes for scrapping the page
$re_img = '/<h1 itemprop="givenName">\n<img class=\'vmiddle logo_auteur logo_6forum\' src="(.+\.jpg)"/';
$re_name = '/<span class=" forum" >(.+)<\/span>/';
$re_points = '/\b(\d+)\&nbsp;Points\&nbsp;\B/';
$re_challs_num = '/^(\d+)\/(\d+)$/m';
$re_ranking = '/(\d+)<span class="gris">\/(\d+)/';
$re_rank = '/^(\w+)\&nbsp;$/m';

# your profile picture
preg_match($re_img, $t, $img);
$img_src = $url.$img[1];

# your displayed name
preg_match($re_name, $t, $name);
$name = $name[1];

# your points
preg_match($re_points, $t, $points);
$points = $points[1];

# your solved challenges and the number of total cahllenges
preg_match($re_challs_num, $t, $challs);
$challs_flaged = $challs[1];
$challs_total = $challs[2];

# your ranking
preg_match($re_ranking, $t, $ranking);
$ranking_ = $ranking[1];
$ranking_total = $ranking[2];

# your rank
preg_match($re_rank, $t, $rank);
$rank = $rank[1];

# Root-Me logo and url
$rm_logo = "https://www.root-me.org/squelettes/img/rblackGrand16.png";
$rm_ = "https://www.root-me.org";

# may be tweaked your your convenience
$b_width = "220px";
$b_height = "50px";
$i_width = "40px";

# echoing the generated badge
echo "<style>[class*='rm']{padding:0;margin:0;font-size:11px;}.rm_name{font-weight:bold;}</style>";
echo "<div style='width:$b_width; height:$b_height; display:flex; border:1px solid black;border-radius:5px;'><div style='margin:auto; width:$i_width; height:$i_width;'><img style='width:$i_width; height:$i_width; border-radius:4px; vertical-align:middle;' src='$img_src'></div><div><div class='rm_c'><span class='rm_name'>$name</span> <span class='rm_rank'>$rank</span> <span class='rm_points'>($points pts)</span></div><div class='rm_c'><span class='rm_ranking'>Rank: $ranking_</span> <span class='rm_solves'>Solves: $challs_flaged/$challs_total</span></div><span class='rm_'><a href='$rm_'>root-me.org</a></span></div><div style='display:flex;flex-direction:column-reverse;'><img style='padding:3px;' src='$rm_logo'></div></div>";

?>
