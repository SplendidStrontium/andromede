// main.js 
$(document).ready(function() {
    //alert(document.getElementById("base-nav").offsetHeight);

    var logoCanvas = document.getElementById('tlogo');

    if (logoCanvas.getContext) {
        var ctx = logoCanvas.getContext('2d');

        initialize();

        function initialize() {
            window.addEventListener('resize', resizeCanvas, false);

            resizeCanvas();
        }

        function redraw() {
            ctx.font = getFont();

            function getFont() {
                // default font is 119 for 700 px wide canvas
                var ratio = 119 / 700;
                var size = logoCanvas.width * ratio;
                return (size|0) + 'px Titillium Web';
            }
            

            ctx.fillStyle = '#68dfed';
            var lpad = logoCanvas.width * 0.08;
            var tpad = logoCanvas.height * 0.71;
            ctx.fillText('androme.de', lpad,tpad);

            ctx.beginPath();
            var pt1x = logoCanvas.width * 0.25;
            var pt1y = logoCanvas.height * 0.04;
            ctx.moveTo(pt1x,pt1y);
            var c1x = logoCanvas.width * 0.02;
            var c1y = logoCanvas.height * 0.43;
            var c2x = logoCanvas.width * 0.02;
            var c2y = logoCanvas.height * 0.88;
            var pt2x = logoCanvas.width * 0.19;
            var pt2y = logoCanvas.height * 0.88;
            ctx.bezierCurveTo(c1x,c1y,c2x,c2y,pt2x,pt2y);
            ctx.strokeStyle = '#58a64c';
            ctx.stroke();

            var ewid = logoCanvas.width * 0.014;
            var ehei = logoCanvas.height * 0.029;

            ctx.beginPath();
            var s1x = logoCanvas.width * 0.19;
            var s1y = logoCanvas.height * 0.88;
            ctx.ellipse(s1x,s1y,ewid,ehei,0,0,2*Math.PI);
            ctx.fillStyle = '#58a64c';
            ctx.fill();

            ctx.beginPath();
            var s2x = s1x + (logoCanvas.width * 0.1);
            ctx.ellipse(s2x,s1y,ewid,ehei,0,0,2*Math.PI);
            ctx.fillStyle = '#58a64c';
            ctx.fill();

            ctx.beginPath();
            var s3x = s2x + (logoCanvas.width * 0.2);
            ctx.ellipse(s3x,s1y,ewid,ehei,0,0,2*Math.PI);
            ctx.fillStyle = '#58a64c';
            ctx.fill();

            ctx.beginPath();
            var s4x = s3x + (logoCanvas.width * 0.3);
            ctx.ellipse(s4x,s1y,ewid,ehei,0,0,2*Math.PI);
            ctx.fillStyle = '#58a64c';
            ctx.fill();
 
 
        }

        // runs when DOM window resize fires
        function resizeCanvas() {
            var mynav = document.getElementById("base-nav");
            logoCanvas.height = mynav.offsetHeight;
            logoCanvas.width = (logoCanvas.height)*4;
            redraw();
        }
    } else { 
        // canvas unsupported code here
    }

});

// toggle nav menu
function toggleNavMenu() {
    var x = document.getElementById('hidden-nav-list');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } else {
        x.style.display = 'none';
    }
}


new Vue({
  el: "#app",
  data: {
  	dierollintrotxt: 'Version 1.0 rolls 2d4. Press the button!'
  },
  methods: {
  	rolladie: function(){
    	var res1 = Math.floor((Math.random() * 4) + 1);
      var res2 = Math.floor((Math.random() * 4) + 1);
      var tres = 'You rolled ' + res1 + ', ' + res2;
      document.getElementById("die-res").innerHTML = tres;
    }
  }
})

