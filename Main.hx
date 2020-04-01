package;

class Main extends hxd.App {

    var enemies: h2d.Tile;

    var kite: h2d.Anim;
    var snake: h2d.Anim;
    var blob: h2d.Anim;

    override function init() {
        
        s2d.scaleMode = ScaleMode.Zoom(4);
        enemies = hxd.Res.Enemies.toTile();
        
        kite = createAnimation(enemies, 6, 32, 88, 8);
        kite.x = 16;
        kite.y = 64;

        snake = createAnimation(enemies, 3, 32, 40, 8);
        snake.x = 32;
        snake.y = 64;

        blob = createAnimation(enemies, 5, 32, 72, 8);
        blob.x = 48;
        blob.y = 64;
    }

    private function createAnimation(tiles: h2d.Tile, count: Int, sx: Int, sy: Int, w: Int): h2d.Anim {
        
        var f = new Array<h2d.Tile>();
        var p: Int = Std.int(w/2);

        for (i in 0...count) {
            f[i] = tiles.sub(sx,sy,w,w,p,p);
            sx += w;
        }

        var a = new h2d.Anim(f, s2d);
        a.speed = 8;

        return a;
    }

    static function main() {
        hxd.Res.initEmbed();
        new Main();
    }
}