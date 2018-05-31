// main.js 

// canvas logic
function draw() {
    var canvas = document.getElementById('tlogo');

    if (canvas.getContext) {
        var ctx = canvas.getContext('2d');
       
        ctx.font = '58px Titillium Web';
        ctx.fillStyle = '#68dfed';
        ctx.fillText('androme.de', 60,67); 

        ctx.beginPath();
        ctx.moveTo(138,22);
        ctx.bezierCurveTo(34,40,10,80,120,80);
        ctx.strokeStyle = '#58a64c';
        ctx.stroke();

        ctx.beginPath();
        ctx.ellipse(120,74,10,6,0,0,2 * Math.PI);
        ctx.stroke();

    } else {
        // canvas-unsupported code here
    }
}
