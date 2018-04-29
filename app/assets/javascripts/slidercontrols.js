(function ($) {
    "use strict";
    var slider = new MasterSlider();
    // adds Arrows navigation control to the slider.
    slider.control('arrows');
    slider.control('timebar', {insertTo: '#masterslider'});
    slider.control('bullets');
    slider.setup('masterslider', {
        width: 1170, // slider standard width
        height: 600, // slider standard height
        space: 0,
        layout: 'auto',
        loop: true,
        preload: 0,
        instantStartLayers: true,
        autoplay: true
    });
})(jQuery);
