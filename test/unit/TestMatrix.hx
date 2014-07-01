package unit;

import buddy.*;
using buddy.Should;

import cocktail.geom.*;

class TestMatrix extends BuddySuite implements Buddy {

    public function new()
    {
        describe('Matrix', function () {
            describe('#identity', function (){
                it('should reset the matrix', function () {
                    var matrix = new Matrix();
                    matrix.a = 10;
                    matrix.b = 34;
                    matrix.c = 12;
                    matrix.d = 12;
                    matrix.e = 12;
                    matrix.f = 12;

                    matrix.identity();

                    matrix.a.should.be(1.0);
                    matrix.b.should.be(0.0);
                    matrix.c.should.be(0.0);
                    matrix.d.should.be(1.0);
                    matrix.e.should.be(0.0);
                    matrix.f.should.be(0.0);

                    matrix.isIdentity().should.be(true);
                });
            });

            describe('#concatenate', function () {
                it('should multiply matrices', function () {
                    var matrix = new Matrix();
                    var otherMatrix = new Matrix(2.0, 3.0, 4.0);

                    matrix.concatenate(otherMatrix);

                    matrix.a.should.be(2.0);
                    matrix.b.should.be(3.0);
                    matrix.c.should.be(8.0);
                    matrix.d.should.be(13.0);
                    matrix.e.should.be(0.0);
                    matrix.f.should.be(0.0);
                });
            });

            describe('#translate', function () {
                it('should apply a translation to the matrix', function () {
                    var matrix = new Matrix();
                    matrix.translate(3, 3);

                    matrix.a.should.be(1.0);
                    matrix.b.should.be(0.0);
                    matrix.c.should.be(0.0);
                    matrix.d.should.be(1.0);
                    matrix.e.should.be(3.0);
                    matrix.f.should.be(3.0);
                });
            });

            describe('#rotate', function () {
                it('should apply a rotation to the matrix', function () {
                    var matrix = new Matrix();
                    matrix.rotate(Math.PI / 2);

                    matrix.a.should.be(0.0);
                    matrix.b.should.be(1.0);
                    matrix.c.should.be(0.0);
                    matrix.d.should.be(-1.0);
                    matrix.e.should.be(0.0);
                    matrix.f.should.be(0.0);
                });
            });

            describe('#scale', function () {
                it('should scale the matrix', function () {
                    var matrix = new Matrix();
                    matrix.scale(2, 2);

                    matrix.a.should.be(2.0);
                    matrix.b.should.be(0.0);
                    matrix.c.should.be(0.0);
                    matrix.d.should.be(2.0);
                    matrix.e.should.be(0.0);
                    matrix.f.should.be(0.0);
                });
            });
        });
    }
}
