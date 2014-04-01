$(document).ready(function() {
	if (document.getElementById('micropost_content')) {
		document.getElementById('micropost_content').onkeyup=function() {
	    document.getElementById('charCount').innerHTML = 140-this.value.length;    
		}
	}
});