import h2d.Scene.ScaleMode;

class Main extends hxd.App {

    var anim: h2d.Anim;

    override function init() {
        s2d.scaleMode = ScaleMode.Zoom(4);
        var enemies = hxd.Res.Enemies.toTile();

        var t1 = enemies.sub(32,88,8,8,0,0);
        var t2 = enemies.sub(40,88,8,8,0,0); 
        var t3 = enemies.sub(48,88,8,8,0,0); 
        var t4 = enemies.sub(56,88,8,8,0,0); 
        var t5 = enemies.sub(64,88,8,8,0,0); 
        var t6 = enemies.sub(72,88,8,8,0,0);

        anim = new h2d.Anim([t1,t2,t3,t4,t5,t6],s2d);
        anim.speed = 8;
        //anim.onAnimEnd = function() { trace("animation ended!"); }
    }

    static function main() {
        hxd.Res.initEmbed();
        new Main();
    }
}