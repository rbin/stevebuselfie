// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var canvas = new fabric.Canvas('canvass');
canvas.setHeight(960);
canvas.setWidth(1280);

fabric.Image.fromURL('/buscemeyes.png', function(img) {
	var oImg = img.set({ left: 330, top: 170, angle: -4 });
	oImg.scale(1.0);
	canvas.add(oImg);
});
fabric.Image.fromURL('/buscemouth.png', function(img) {
	var oImg = img.set({ left: 450, top: 450, angle: -4 }); 
	oImg.scale(1.0);
	canvas.add(oImg);
});

canvas.setActiveObject(canvas.item(0));
this.__canvases.push(canvas);