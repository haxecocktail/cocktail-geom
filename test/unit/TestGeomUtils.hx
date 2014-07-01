package unit;

import buddy.*;
using buddy.Should;

import cocktail.geom.*;
import cocktail.geom.GeomData;

class TestGeomUtils extends BuddySuite implements Buddy {

    public function new()
    {
        describe('Geom Utils', function () {
            describe('#addBounds', function () {
                it('should get emcompassing bounds', function () {
                    var bound = new RectangleVO();
                    bound.width = 100;
                    bound.height = 100;

                    var otherBound = new RectangleVO();
                    otherBound.width = 100;
                    otherBound.height = 100;
                    otherBound.x = 50;
                    otherBound.y = 50;

                    GeomUtils.addBounds(otherBound, bound);

                    bound.width.should.be(150);
                    bound.height.should.be(150);
                });
            });

            describe('#intersectBounds', function () {
                it('should get bounds intersection', function () {
                    var bound = new RectangleVO();
                    bound.width = 100;
                    bound.height = 100;

                    var otherBound = new RectangleVO();
                    otherBound.width = 100;
                    otherBound.height = 100;
                    otherBound.x = 50;
                    otherBound.y = 50;
                    
                    var resultBounds = new RectangleVO();

                    GeomUtils.intersectBounds(otherBound, bound, resultBounds);

                    resultBounds.x.should.be(50);
                    resultBounds.y.should.be(50);
                    resultBounds.width.should.be(50);
                    resultBounds.height.should.be(50);
                });
            });
        });
    }
}
