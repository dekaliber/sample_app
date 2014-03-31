$(document).ready(function() {
	document.getElementById('micropost_content').onkeyup=function() {
    document.getElementById('charCount').innerHTML = 140-this.value.length;    
	}
});