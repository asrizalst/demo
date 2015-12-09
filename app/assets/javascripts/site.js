$(document).on('ready page:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }

    });
});

$(document).on('ready page:load', function(){
	var zoom_config = {zoomWindowFadeIn: 500,
            zoomWindowFadeOut: 500,
            lensFadeIn: 500,
            lensFadeOut: 500,
            tint:true,
            tintColour:'#ebebeb',
            tintOpacity:0.5,
            borderSize: 0,
            zoomWindowWidth:500,
            zoomWindowHeight:300,
            lensBorderSize: 3,
            lensBorderColour: '#66bdc2', };

    $('.img-zoom').elevateZoom(zoom_config);

    $('.img-zoom').click(function(){
        var img = $('img', $(this)).clone();
        img.attr('data-zoom-image', $(this).attr('href'));

        img.elevateZoom(zoom_config);

        $('.img-zoom').html(img);
        return false;
    });
});