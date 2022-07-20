---
layout: page
title: Publications
permalink: /search/
---

<style>
ol {
  list-style: none;
  margin: 0;
  padding: 0;
}

ol > li {
    margin: 0 0 5px;
    list-style:none;
    counter-increment: li;
    text-indent: -3em;
    padding-left: 3em;
/*    padding-left: 40px; text-indent: -40px;
*/
}
ol > li:before {
    min-width:10em;
    margin-left:0px;
    content: "[" counter(li) "]";
    padding-right: 1em;
}

pre {
 margin: 0 50px 15px;
color: #41A5DF;
}

i {
    margin: 0;
}


/*
 li::marker {
   color: red;
 }
 li {
   color: blue;
 }
*/

</style>

{% bibliography%}










