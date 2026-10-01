{% if section_select == 'slider' %}

	{#  **** Home slider ****  #}
	<section class="js-main-slider-section{% if not settings.slider_full %} section-home{% endif %}" data-store="home-slider" data-transition="fade-in">
		{% if show_help or (show_component_help and not (has_main_slider or has_mobile_slider)) %}
			{% snipplet 'defaults/home/slider_help.tpl' %}
		{% else %}
			{% include 'snipplets/home/home-slider.tpl' %}
			{% if has_mobile_slider %}
				{% include 'snipplets/home/home-slider.tpl' with {mobile: true} %}
			{% endif %}
		{% endif %}
	</section>

{% elseif section_select == 'main_categories' %}

	{#  **** Main categories ****  #}
	{% if show_help or (show_component_help and not has_main_categories) %}
		{% snipplet 'defaults/home/main_categories_help.tpl' %}
	{% else %}
		{% include 'snipplets/home/home-categories.tpl' %}
	{% endif %}

{% elseif section_select == 'welcome' %}

	{#  **** Welcome message ****  #}
	{% if show_help or (show_component_help and not has_welcome_message) %}
		{% include 'snipplets/defaults/home/institutional_message_help.tpl' with { title: 'Mensaje de bienvenida'| translate, welcome_message: true, data_store: 'home-welcome-message' }  %}
	{% else %}
		{% include 'snipplets/home/home-welcome-message.tpl' %}
	{% endif %}

{% elseif section_select == 'institutional' %}

	{#  **** Institutional message ****  #}
	{% if show_help or (show_component_help and not has_institutional_message) %}
		{% include 'snipplets/defaults/home/institutional_message_help.tpl' with { title: 'Mensaje institucional'| translate, data_store: 'home-institutional-message' }  %}
	{% else %}
		{% include 'snipplets/home/home-institutional-message.tpl' %}
	{% endif %}

{% elseif section_select == 'products' %}

	{#  **** Featured products ****  #}
	{% if show_help or (show_component_help and not has_products) %}
		{% include 'snipplets/defaults/home/featured_products_help.tpl' with { products_title: 'Destacados' | translate, section_id: 'featured' }  %}
	{% else %}
		{% include 'snipplets/home/home-featured-products.tpl' with {'has_featured': true} %}
	{% endif %}

{% elseif section_select == 'new' %}

	{#  **** New products ****  #}
	{% if show_help or (show_component_help and not has_products) %}
		{% include 'snipplets/defaults/home/featured_products_help.tpl' with { products_title: 'Novedades' | translate, section_id: 'new' }  %}
	{% else %}
		{% include 'snipplets/home/home-featured-products.tpl' with {'has_new': true} %}
	{% endif %}

{% elseif section_select == 'sale' %}

	{#  **** Sale products ****  #}
	{% if show_help or (show_component_help and not has_products) %}
		{% include 'snipplets/defaults/home/featured_products_help.tpl' with { products_title: 'Ofertas' | translate, section_id: 'sale' }  %}
	{% else %}
		{% include 'snipplets/home/home-featured-products.tpl' with {'has_sale': true} %}
	{% endif %}

{% elseif section_select == 'promotion' %}

	{#  **** Promotional products ****  #}
	{% if show_help or (show_component_help and not has_products) %}
		{% include 'snipplets/defaults/home/featured_products_help.tpl' with { products_title: 'Promociones' | translate, section_id: 'promotion' }  %}
	{% else %}
		{% include 'snipplets/home/home-featured-products.tpl' with {'has_promotion': true} %}
	{% endif %}

{% elseif section_select == 'best_seller' %}

	{#  **** Best sellers products ****  #}
	{% if show_help or (show_component_help and not has_products) %}
		{% include 'snipplets/defaults/home/featured_products_help.tpl' with { products_title: 'Más vendidos' | translate, section_id: 'best-seller' }  %}
	{% else %}
		{% include 'snipplets/home/home-featured-products.tpl' with {'has_best_seller': true} %}
	{% endif %}

{% elseif section_select == 'informatives' %}

	{#  **** Informative banners ****  #}
	{% if show_help or (show_component_help and not has_informative_banners) %}
		{% snipplet 'defaults/home/informative_banners_help.tpl' %}
	{% else %}
		{% include 'snipplets/banner-services/banner-services.tpl' %}
	{% endif %}

{% elseif section_select == 'categories' %}

	{#  **** Categories banners ****  #}

	{% set section_without_margins = settings.banner_without_margins ? 'section-home-color p-0' %}
	
	<!--BANNER SHIP COST-->
	<div class="banner_shipping_container"> <h2 class="banner_shipping_title"> <span class="colorme_green"><span style="font-weight: 600;">¡Envío gratis!</span></span> (compra mínima de $1,200)</h2> </div>
	
	<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	
	<section style="display:none!important;" class="js-section-banner-home section-home section-banners-home position-relative overflow-none {{ section_without_margins }}" data-store="home-banner-categories" data-transition="fade-in-up">
		{% if show_help or (show_component_help and not has_banners) %}
			{% include 'snipplets/defaults/home/banners_help.tpl' with { banner_name: 'category', banner_title: 'Categoría' | translate, help_text: 'Podés destacar categorías de tu tienda desde' | translate, section_name: 'Banners de categorías' | translate }  %}
		{% else %}
			{% include 'snipplets/home/home-banners.tpl' with {'has_banner': true} %}
		{% endif %}
	</section>

<style type="text/css">

img#alfadiv:hover {

    opacity: unset!important;

}
 
img#undewdiv:hover {

    opacity: unset!important;

}

body {
    margin: 0;
    overscroll-behavior-x: none; /* evita el deslizamiento horizontal */
    overflow-x: hidden;
    touch-action: pan-y;
}
.carousel-promotional {
    display: flex;
    gap: 40px;
}
.TN-kit-container {
    background-color: #e4e4e4;
    overflow: hidden;
    position: relative;
    width: 100%;
    margin-top: 30px;
    margin-bottom: 40px;
    padding-top: 30px;
    padding-bottom: 60px;
}
.TN-kit-title {
    font-size: 35px;
    color: #f19754;
    font-weight: 700;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    padding-top: 14px;
    text-transform: none;
    letter-spacing: normal;
}
.carrucel-container-index {
    border-radius: clamp(18px, calc(8px + 2vw), 34px);
}
.carrucel-container {
    position: absolute;
    width: -webkit-fill-available;
    max-width: 1268px;
    cursor: pointer;
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    width: 100%;
    border-radius: clamp(14px, calc(8px + 1.4vw), 22px);
    overflow: hidden;
}
.TN-tab-element {
    border-left: 2px solid #ffffff;
    border-right: 0px solid #ffffff;
    border-top: 2px solid #e2e2e2;
    border-bottom: 2px solid #e2e2e2;
    padding: 1em 2em;
    color: #4e4e4e;
    font-size: 15px;
    font-weight: 400;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    cursor: pointer;
    background-color: white;
}
.RT_body_container {
    max-width: 1200px;
    width: calc(100% - 4em);
    padding: 3em 2em 2em 2em;
    margin: auto;
    margin-bottom: 40px;
    border-radius: 30px;
}
.RT_product_img_back {
    background-image: url(https://enzactamedia.enzacta.com/shopenzacta/img/coffe.png);
    background-position: center center;
    background-size: cover;
}
.RT_product_title {
    font-size: 34px;
    font-family: "Montserrat", sans-serif;
    font-weight: 700;
    text-align: left;
    color: #8c6239;
    margin-bottom: 0px;
    text-transform: none;
    letter-spacing: normal;
}
@media only screen and (min-width: 0px) {
    .RT_product_title {
        font-size: 26px;
    }
    .RT_description_inner_block {
        margin: 3em 2em 4em 2em;
        width: calc(100% - 4em);
    }
    .RT_body_container_medium {
        width: calc(100% - 4em);
        padding: 3em 2em 2em 2em;
    }
    .carrucel-container-index {
        max-width: 318px;
        margin: auto;
        margin-bottom: 10px;
        position: relative;
        overflow: hidden;
        margin-top: 40px;
        margin-bottom: 40px;
    }
    .carousel-promotional-controls-left {
        position: unset;
    }
    .carousel-promotional-controls-right {
        position: unset;
        margin-right: 2em;
    }
}
@media only screen and (min-width: 768px) {
    .RT_product_title {
        font-size: 34px;
    }
    .RT_description_inner_block {
        margin: 4.7em 5em 4em 5em;
        width: calc(100% - 10em);
    }
    .RT_body_container_medium {
        width: calc(100% - 4em);
        padding: 3em 2em 2em 2em;
    }
    .carrucel-container-index {
        max-width: 1200px;
        margin: auto;
        margin-bottom: 10px;
        position: relative;
        overflow: hidden;
        margin-top: 50px;
        margin-bottom: 40px;
    }
    .carousel-promotional-controls-left {
        position: unset;
    }
    .carousel-promotional-controls-right {
        position: unset;
        margin-right: 2em;
    }
}
img#alfadiv:hover {
    opacity: unset !important;
}
img#undewdiv:hover {
    opacity: unset !important;
}
.carousel-promotional {
    display: flex;
    transition: transform 0.5s ease-in-out;
    padding-top: 20px;
    padding-bottom: 20px;
}
.carousel-promotional-item {
    min-width: 75%;
    box-sizing: border-box;
    flex: 1;
    padding: 0em 0em 1em 0em;
    box-shadow: 1px -1px 10px 0px rgba(0, 0, 0, 0.44);
    -webkit-box-shadow: 1px -1px 10px 0px rgba(0, 0, 0, 0.3);
    -moz-box-shadow: 1px -1px 10px 0px rgba(0, 0, 0, 0.44);
    border-radius: 24px;
    background-color: #ffffff;
    position: relative;
    display: flex;
    flex-direction: column;
}
.product-promotional-item {
    min-width: 75%;
    box-sizing: border-box;
    flex: 1;
    padding: 0em 0em 1em 0em;
    box-shadow: 1px -1px 10px 0px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 1px -1px 10px 0px rgba(0, 0, 0, 0.3);
    -moz-box-shadow: 1px -1px 10px 0px rgba(0, 0, 0, 0.3);
    border-radius: 34px;
    background-color: #ffffff;
    display: flex;
    flex-direction: column;
}
.carousel-promotional-item img,
.product-promotional-item img {
    width: 100%;
    height: auto;
    display: block;
    border-top-left-radius: 24px;
    border-top-right-radius: 24px;
}
.carousel-promotional-controls-left button,
.carousel-promotional-controls-right button {
    background-color: #bababa;
    border: none;
    font-family: "Montserrat", sans-serif;
    color: white;
    padding: 0px;
    cursor: pointer;
    font-size: 18px;
    width: 35px;
    height: 35px;
    border-radius: 43px;
    margin-left: 10px;
}
.carousel-promotional-controls-left button:hover,
.carousel-promotional-controls-right button:hover {
    background-color: #909090;
}
.carousel-promotional-controls-left button.hideme:hover,
.carousel-promotional-controls-right button.hideme:hover {
    background-color: #d3d3d3;
    cursor: default;
    opacity: 0.5;
}
@media screen and (min-width: 0px) {
    .carousel-promotional-item {
        min-width: 80%;
    }
}
@media screen and (min-width: 480px) {
    .carousel-promotional-item {
        min-width: 50%;
    }
}
@media screen and (min-width: 600px) {
    .carousel-promotional-item {
        min-width: 40%;
    }
}
@media screen and (min-width: 750px) {
    .carousel-promotional-item {
        min-width: 33.333%;
    }
}
@media screen and (min-width: 900px) {
    .carousel-promotional-item {
        min-width: 25%;
    }
}
@media screen and (min-width: 1200px) {
    .carousel-promotional-item {
        min-width: 250px;
    }
}
@media screen and (min-width: 1600px) {
    .carousel-promotional-item {
        min-width: 250px;
    }
}
.carousel-promotional-item-divider {
    width: 100%;
    height: 2px;
    background-color: #f19754;
}
.product-promotional-item-divider {
    width: 100%;
    height: 2px;
    background-color: #7bcd51;
}
.carousel-promotional-inner {
    width: calc(100% - 4em);
    margin: 1em 2em 1em 2em;
    display: flex;
    flex-direction: column;
    flex: 1;
}
.carousel-promotional-subtitle {
    font-size: 12px;
    color: #868686;
    font-weight: 700;
    text-align: left;
    font-family: "Montserrat", sans-serif;
    margin-bottom: 10px;
    margin-top: 0px;
}
.carousel-promotional-title {
    margin-top: 0;
    font-size: 15px;
    color: #4c9d6f;
    font-weight: 700;
    text-align: left;
    font-family: "Montserrat", sans-serif;
    text-transform: none;
    letter-spacing: normal;
}
.product-promotional-title {
    margin-top: 0;
    margin-bottom: 0;
    font-size: 22px;
    color: #7bcd51;
    font-weight: 700;
    text-align: left;
    font-family: "Montserrat", sans-serif;
    text-transform: none;
    letter-spacing: normal;
}
.carousel-promotional-price {
    margin-top: 0px;
    font-size: 30px;
    color: #404040;
    font-weight: 400;
    text-align: left;
    font-family: "Montserrat", sans-serif;
    margin-bottom: 20px;
}
.carousel-promotional-price span {
    font-size: 15px;
    vertical-align: super;
    position: relative;
    top: 0px;
}
.RT_product_price span {
    font-size: 16px;
    vertical-align: super;
    position: relative;
    top: 0px;
}
.carousel-promotional-button {
    background-color: #f19754;
    border-radius: 10px;
    padding: 0.8em 2em;
    font-size: 13px;
    color: #ffffff;
    font-weight: 700;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    width: fit-content;
    transition: ease 0.3s;
}
.carousel-promotional-button:hover {
    transition: all 0.3s;
    scale: 1.1;
}
.product-promotional-button {
    background-color: #fbd433;
    border-radius: 10px;
    padding: 0.8em 2em;
    font-size: 15px;
    color: #000000;
    font-weight: 700;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    width: fit-content;
    transition: ease 0.3s;
}
.product-promotional-button:hover {
    transition: ease 0.3s;
    scale: 1.1;
}
a:link,
a:visited,
a:hover,
a:focus,
a:active {
    color: none;
    text-decoration: none;
    display: inline-block;
}
.carousel-promotional-image-item {
    width: 100%;
}
.carousel-promotional-tag {
    background-color: #4c9d6f;
    border-radius: 5px;
    font-size: 10px;
    color: #ffffff;
    font-weight: 700;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    padding: 6px 15px 6px 15px;
    position: absolute;
    top: 30px;
    right: 30px;
}
.carousel-promotional-arrow-icon {
    fill: white;
}
.carousel-promotional-arrow-icon_container {
    width: 14px;
    margin-top: 4px;
}
.carousel-button-block {
    width: 100%;
    display: flex;
    justify-content: flex-end;
    max-height: 38px;
}
.TN-general-container {
    max-width: 1200px;
    margin: auto;
    margin-top: 80px;
    margin-bottom: 60px;
}
.TN-product-section-title {
    color: #7bcd52;
    font-size: 35px;
    font-weight: 700;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    margin: 0em 2em;
    text-transform: none;
    letter-spacing: normal;
}
.TN-tab-container {
    display: flex;
    flex-wrap: wrap;
    max-width: 1000px;
    margin: auto;
    justify-content: center;
    margin-top: 40px;
}
.TN-tab-element:hover,
.TN-tab-element.active {
    background-color: #7bcd51;
    border-top: 2px solid #7bcd51;
    border-bottom: 2px solid #7bcd51;
    border-left: 2px solid #7bcd51;
    border-right: 0px solid #7bcd51;
    color: white;
}
.TN-tab-element.TN-tab-radious-left {
    border-top: 2px solid #e2e2e2;
    border-bottom: 2px solid #e2e2e2;
    border-left: 2px solid #e2e2e2;
    border-right: 2px solid #e2e2e2;
    padding: 1em 2em;
    color: #4e4e4e;
    font-size: 15px;
    font-weight: 400;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    cursor: pointer;
    background-color: white;
}
.TN-tab-element.TN-tab-radious-right {
    border-top: 2px solid #e2e2e2;
    border-bottom: 2px solid #e2e2e2;
    border-left: 0px solid #e2e2e2;
    border-right: 2px solid #e2e2e2;
    padding: 1em 2em;
    color: #4e4e4e;
    font-size: 15px;
    font-weight: 400;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    cursor: pointer;
    background-color: white;
}
.TN-tab-element.TN-tab-radious-righttwo {
    border-top: 2px solid #e2e2e2;
    border-bottom: 2px solid #e2e2e2;
    border-left: 2px solid #ffffff;
    border-right: 0px solid #e2e2e2;
    padding: 1em 2em;
    color: #4e4e4e;
    font-size: 15px;
    font-weight: 400;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    cursor: pointer;
    background-color: white;
}
.TN-tab-element.TN-tab-radious-left.active,
.TN-tab-element.TN-tab-radious-left:hover {
    border-top: 2px solid #7bcd51;
    border-bottom: 2px solid #7bcd51;
    border-left: 2px solid #7bcd51;
    border-right: 0px solid #7bcd51;
    background-color: #7bcd51;
    color: white;
}
.TN-tab-element.TN-tab-radious-right.active,
.TN-tab-element.TN-tab-radious-right:hover {
    border-top: 2px solid #7bcd51;
    border-bottom: 2px solid #7bcd51;
    border-left: 2px solid #7bcd51;
    border-right: 0px solid #7bcd51;
    background-color: #7bcd51;
    color: white;
}
.TN-tab-element.TN-tab-radious-righttwo:hover,
.TN-tab-element.TN-tab-radious-righttwo.active {
    border-top: 2px solid #7bcd51;
    border-bottom: 2px solid #7bcd51;
    border-left: 0px solid #7bcd51;
    border-right: 2px solid #7bcd51;
    background-color: #7bcd51;
    color: white;
}
.wellness-tag {
    background-color: #705ab0;
}
.vitality-tag {
    background-color: #ef8a51;
}
.skincare-tag {
    background-color: #52a1b2;
}
.partner-tag {
    background-color: #e44e7d;
}
.coffee-tag {
    background-color: #a68955;
}
.NT-product-info {
    font-size: 15px;
    color: #666666;
    font-weight: 400;
    text-align: left;
    font-family: "Montserrat", sans-serif;
    margin-bottom: 0px;
}
.NT-product-description {
    font-size: 16px;
    color: #666666;
    font-weight: 400;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    margin: auto;
    max-width: 800px;
    padding: 2em;
    min-height: 60px;
    box-sizing: initial;
}
.TN-text-container {
    max-width: 1200px;
    margin: auto;
    margin-top: 0px;
    margin-bottom: 0px;
}
.NT-produc-seemore {
    width: 100%;
    font-size: 12px;
    color: #666666;
    font-weight: 400;
    text-align: left;
    font-family: "Montserrat", sans-serif;
    text-decoration: underline !important;
    font-style: italic;
    margin-top: 5px;
    margin-bottom: 20px;
}
.RT_product_img {
    width: 100%;
    opacity: 0;
}
.RT_background_chicle {
    background-color: #eee6d9;
}
.RT_product_description {
    font-size: 16px;
    font-family: "Montserrat", sans-serif;
    font-weight: 400;
    text-align: left;
    color: #8c6239;
    line-height: 22px;
    margin-top: 12px !important;
}
.RT_product_description_small {
    font-size: 14px;
    font-family: "Montserrat", sans-serif;
    font-weight: 400;
    text-align: left;
    color: #8c6239;
    line-height: 22px;
    margin-top: 0px;
}
.RT_divider_product {
    width: 100%;
    height: 1px;
    background-color: white;
    margin-top: 10px;
    margin-bottom: 10px;
}
.RT_product_subtitle {
    font-size: 18px;
    font-family: "Montserrat", sans-serif;
    font-weight: 700;
    text-align: left;
    color: #8c6239;
    margin-bottom: 0px;
}
.RT_product_price {
    font-size: 30px;
    font-family: "Montserrat", sans-serif;
    font-weight: 300;
    text-align: left;
    color: #8c6239;
    margin-bottom: 0px;
}
.RT_buy_button {
    border-radius: 10px;
    padding: 10px 2em;
    background-color: #8c6239;
    font-size: 16px;
    font-family: "Montserrat", sans-serif;
    font-weight: 700;
    text-align: center;
    color: white;
    transition: ease 0.5s;
    box-shadow:
        0px 0px 0px #bea4b7,
        0px 0px 0px #f5e8f1;
}
.RT_buy_button:hover {
    transition: ease 0.5s;
    box-shadow:
        6px 6px 9px #beafa4,
        -6px -6px 9px #f5f0e8;
}
.footer-message-title {
    color: #255449;
    font-size: 35px;
    font-weight: 700;
    text-align: center;
    font-family: "Montserrat", sans-serif;
    text-transform: none;
    letter-spacing: normal;
}
.footer-message-text {
    font-size: 16px;
    font-family: "Montserrat", sans-serif;
    font-weight: 400;
    text-align: center;
    color: #255449;
    line-height: 22px;
    max-width: 650px;
    margin: auto;
}
.image-container-product {
    width: 100%;
    position: relative;
    background-color: #f2f2f2;
    border-top-left-radius: 34px;
    border-top-right-radius: 34px;
}
.product-promotional-icon-container {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding-bottom: 10px;
    margin-top: -14px;
}
.image-icon-product-tag {
    width: 30px !important;
    height: 30px !important;
    cursor: pointer;
}
.img-tag-tag {
    position: absolute;
    top: -30px;
    left: 0;
    background: #fff;
    color: #4c4c4c;
    padding: 5px 10px;
    border-radius: 5px;
    font-size: 12px;
    font-family: "Montserrat", sans-serif;
    font-weight: 700;
    white-space: nowrap;
    display: none;
    z-index: 10;
    box-shadow: 1px -1px 5px 0px rgba(0, 0, 0, 0.4);
    -webkit-box-shadow: 1px -1px 5px 0px rgba(0, 0, 0, 0.4);
    -moz-box-shadow: 1px -1px 5px 0px rgba(0, 0, 0, 0.4);
}
.img-wrapper-tag {
    position: relative;
    margin: 0 8px;
}
@media only screen and (min-width: 0px) {
    .TN_coffespecial {
        padding: 0em;
        width: 100%;
    }
    .RT_product_img_back {
        border-top-left-radius: 0px;
        border-top-right-radius: 0px;
        border-bottom-left-radius: 0px;
        border-bottom-right-radius: 0px;
    }
    .RT_background_chicle {
        border-top-left-radius: 0px;
        border-top-right-radius: 0px;
        border-bottom-left-radius: 0px;
        border-bottom-right-radius: 0px;
    }
    .block03f {
        flex: 100%;
        max-width: 100%;
    }
    .TN-tab-radious-left {
        border-top-left-radius: 40px;
        border-bottom-left-radius: 40px;
    }
    .TN-tab-radious-right {
        border-top-right-radius: 40px;
        border-bottom-right-radius: 40px;
        border-right: 2px solid #e2e2e2;
    }
    .TN-tab-element,
    .TN-tab-element.TN-tab-radious-righttwo {
        padding: 1em 1em;
        flex: calc(100% - 40px);
        margin-top: 10px;
        margin-left: 20px;
        margin-right: 20px;
        border-left: 2px solid #e2e2e2;
        border-right: 2px solid #e2e2e2;
    }
    .TN-tab-radious-all {
        border-radius: 40px;
    }
    .footer-message-container {
        background-image: url(https://enzactamedia.enzacta.com/shopenzacta/img/Fondo-Compania-f2.jpg);
        background-position: bottom;
        background-size: contain;
        width: 100%;
        margin-top: 0px;
        padding: 2em;
        padding-top: 40px;
        padding-bottom: 200px;
        background-repeat: no-repeat;
        background-color: #beefae;
    }
    .container-product-display {
        margin: auto;
        margin-top: 30px;
        gap: 60px;
        width: 100%;
        padding: 0 2em;
        max-width: 450px;
    }
    .carousel-promotional-container {
        width: 100%;
        position: relative;
        padding: 0 0 0 2em;
    }
}
@media only screen and (min-width: 440px) {
    .footer-message-container {
        background-image: url(https://enzactamedia.enzacta.com/shopenzacta/img/Fondo-Compania-f1.jpg);
        background-position: center center;
        background-size: cover;
        width: 100%;
        margin-top: 0px;
        padding: 2em;
        padding-top: 40px;
        padding-bottom: 300px;
        background-repeat: no-repeat;
        background-color: #beefae;
    }
}
@media only screen and (min-width: 645px) {
    .block03f {
        flex: 50%;
        max-width: calc(50% - 20px);
    }
    .footer-message-container {
        background-image: url(https://enzactamedia.enzacta.com/shopenzacta/img/Fondo-Compania-f1.jpg);
        background-position: center center;
        background-size: cover;
        width: 100%;
        margin-top: 0px;
        padding: 2em;
        padding-top: 40px;
        padding-bottom: 300px;
        background-repeat: no-repeat;
        background-color: #beefae;
    }
    .container-product-display {
        margin-top: 30px;
        gap: 30px;
        width: 100%;
        padding: 0 2em;
        max-width: 1500px;
    }
}
@media only screen and (min-width: 900px) {
    .TN_coffespecial {
        padding: 3em 2em 3em 2em;
        width: 100%;
    }
    .RT_product_img_back {
        border-top-left-radius: 30px;
        border-top-right-radius: 0px;
        border-bottom-left-radius: 30px;
        border-bottom-right-radius: 0px;
    }
    .RT_background_chicle {
        border-top-left-radius: 0px;
        border-top-right-radius: 30px;
        border-bottom-left-radius: 0px;
        border-bottom-right-radius: 30px;
    }
    .block03f {
        flex: 33.3333%;
        max-width: calc(33.3333% - 20px);
    }
    .TN-tab-radious-all {
        border-radius: 0px;
    }
    .TN-tab-radious-left {
        border-top-left-radius: 40px;
        border-bottom-left-radius: 40px;
    }
    .TN-tab-radious-right {
        border-top-right-radius: 40px;
        border-bottom-right-radius: 40px;
        border-right: 2px solid #e2e2e2;
    }
    .TN-tab-element,
    .TN-tab-element.TN-tab-radious-righttwo {
        padding: 1em 3em;
        flex: none;
        margin-top: 0px;
        margin-left: 0px;
        margin-right: 0px;
        border-left: 0px solid #e2e2e2;
        border-right: 2px solid #e2e2e2;
    }
    .footer-message-container {
        background-image: url(https://enzactamedia.enzacta.com/shopenzacta/img/Fondo-Compania-f1.jpg);
        background-position: center center;
        background-size: cover;
        width: 100%;
        margin-top: 0px;
        padding: 2em;
        padding-top: 40px;
        padding-bottom: 300px;
        background-repeat: no-repeat;
        background-color: #beefae;
    }
    .container-product-display {
        margin-top: 30px;
        gap: 30px;
        width: 100%;
        padding: 0 2em;
    }
}
@media only screen and (min-width: 1000px) {
    .block03f {
        flex: 33.3333%;
        max-width: calc(33.3333% - 40px);
    }
    .container-product-display {
        margin-top: 30px;
        gap: 60px;
        width: 100%;
        padding: 0 2em;
    }
}
@media only screen and (min-width: 1200px) {
    .carousel-promotional-container {
        width: 100%;
        position: relative;
        padding: 0 0 0 1em;
    }
}
.first-footer-container {
    background-color: #f5f5f5;
    width: 100%;
    padding: 2em;
}
.first-footer-inner-container {
    margin: auto;
    width: 100%;
    max-width: 1200px;
}
.footer-title-text {
    font-size: 16px;
    font-family: "Montserrat", sans-serif;
    font-weight: 700;
    text-align: left;
    text-transform: none;
    letter-spacing: normal;
}
.footer-normal-text {
    font-size: 14px;
    font-family: "Montserrat", sans-serif;
    font-weight: 400;
    text-align: left;
    color: #000000;
}
.second-footer-container {
    background-color: #dcdcdc;
    width: 100%;
    padding: 0.5em 2em;
}
.second-footer-inner-container {
    margin: auto;
    width: 100%;
    max-width: 1200px;
}
.footer-title-text-second {
    font-size: 12px;
    font-family: "Montserrat", sans-serif;
    font-weight: 700;
    text-align: left;
    text-transform: none;
    letter-spacing: normal;
}
.footer-normal-text-second {
    font-size: 10px;
    font-family: "Montserrat", sans-serif;
    font-weight: 400;
    text-align: left;
}
.social-icon-footer {
    width: 25px;
    height: 25px;
    margin-right: 15px;
}
.social-icon-color {
    fill: black;
}
.social-container-footer {
    list-style-type: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-wrap: wrap;
    margin-top: 10px;
}
.payment-image-icon {
    margin-right: 10px;
    width: 50px;
    height: 30px;
    margin-bottom: 6px;
}
.container_button {
    flex-grow: 1;
    align-content: end;
}
.return_top_arrow {
    background-color: #4caf50;
    width: 50px;
    height: 50px;
    position: fixed;
    left: 20px;
    bottom: 80px;
    border-radius: 100px;
    cursor: pointer;
    box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.34);
    -webkit-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.34);
    -moz-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.34);
}
.return_top_arrow_img {
    margin-top: 0px;
    margin-left: 0px;
    width: 50px;
    height: 50px;
}
.nodrag {
    pointer-events: auto;
    -webkit-user-drag: none;
}
a.NT-produc-seemore:hover {
    color: #7bcd51;
}
.carousel-promotional-item-container {
    width: 100%;
    border-top-left-radius: 24px;
    border-top-right-radius: 24px;
    background-color: #f2f2f2;
}
.banner_shipping_container {
    width: 100%;
    padding: 10px 1em;
    background-color: #79cb50;
}
@media only screen and (min-width: 830px) {
    .banner_shipping_title {
        color: #fff;
        font-size: 16px;
        font-family: "Montserrat", sans-serif;
        font-weight: 300;
        text-align: center;
        margin-top: 0px;
        margin-bottom: 0px;
        text-transform: none;
        letter-spacing: 0em;
    }
}
@media only screen and (min-width: 0px) {
    .banner_shipping_title {
        color: #fff;
        font-size: 16px;
        font-family: "Montserrat", sans-serif;
        font-weight: 300;
        text-align: center;
        margin-top: 0px;
        margin-bottom: 0px;
        text-transform: none;
        letter-spacing: 0em;
    }
}
.hideme {
    background-color: #d3d3d3 !important;
    cursor: default !important;
    opacity: 0.5;
}


.reviewsapp.reviewsapp-highlights-container.recife {
	display:none;
}

.item-description {
	padding:0px;
}

.reviewsapp.reviewsapp-productRating div.reviewsapp-rating {
    display: inline-block;
    vertical-align: -2px;
    margin-left: auto;
    margin-right: auto;
}

@media only screen and (min-width: 0px) {
    .visibledesk {
        display:none;
    }

    .visibledevice {
        display: block;
    }

    .containerflex-carrucel {
        height: 125vw;
        max-height: 565px;
    }

    .carrucel-container-index {
        max-width: 318px;
        margin: auto;
        margin-bottom: 10px;
        position: relative;
        overflow: hidden;
        margin-top: 40px;
        margin-bottom: 34px;
    }

    #carrucon .carrucel-container-dots {
        position: relative;
        bottom: 6px;
    }

    .carousel-promotional-controls-left {
        position: unset;
        top: 35%;
        left: 0;
        z-index: 1;
        height: -webkit-fill-available;
    }

    .carousel-promotional-controls-right {
        position: unset;
        top: 35%;
        right: 0;
        z-index: 1;
        height: -webkit-fill-available;
    }

    .dotsc {
        height:12px;
        width: 12px;
        border-radius: 50px;
        border: 1px solid #fff;
        margin-left: 5px;
        margin-right: 5px;
        cursor: pointer;
        overflow: hidden;
        position: relative;
    }
}

@media only screen and (min-width: 768px) {
    .visibledesk {
        display:block;
    }

    .visibledevice {
        display: none;
    }

    .containerflex-carrucel {
        height: 32vw;
        max-height: 450px;
    }

    .carrucel-container-index {
        max-width: 1200px;
        margin: auto;
        margin-bottom: 10px;
        position: relative;
        overflow: hidden;
        margin-top: 50px;
        margin-bottom: 40px;
    }

    #carrucon .carrucel-container-dots {
        position: relative;
        bottom: 11px;
    }

    .carousel-promotional-controls-left {
        position: unset;
        top: 93px;
        left: 0;
        z-index: 1;
        height: -webkit-fill-available;
    }

    .carousel-promotional-controls-right {
        position: unset;
        top: 93px;
        right: 0;
        z-index: 1;
        height: -webkit-fill-available;
    }

    .dotsc {
        height: 12px;
        width: 12px;
        border-radius: 50px;
        border: 1px solid #fff;
        margin-left: 5px;
        margin-right: 5px;
        cursor: pointer;
        overflow: hidden;
        position: relative;
    }
}

.dots-active {
    width: 40px;
}

.dots-active .innerdots {
    background-color: rgb(121, 203, 80, 0.8);
    height: 10px;
    transition: none;
}

.innerdots {
    transition: none;
    position: absolute;
    z-index: 2;
}

.dotscs {
    position: relative;
}

.innerbackdot {
    background-color: rgb(0, 0, 0, 0.4);
    width: 100%;
    position: absolute;
    height: 10px;
    top: 0;
    left: 0;
    z-index: 0;
}

.innerdotc_pause {
    position: absolute;
    width: 20px;
    height: 20px;
    border-radius: 50px;
    background-color: white;
    top: -3px;
    left: 50%;
    transform: translateX(-50%) scale(0);
    z-index: 100;
    transition: all .1s ease;
}

.innerdotc_pause.active {
    transform: translateX(-50%) scale(1);
    transition: all .1s ease;
}

.innerdotc_pause svg {
    width: 16px;
    height: 16px; 
    margin-left: 2px; 
    margin-top: 2px;
}

.innerdotc_pause svg path, .innerdotc_pause svg rect {
    fill: #383838;
}

.play-icon-mobile polygon, .pause-icon-mobile rect, .pause-icon-mobile path, .play-icon-mobile path {
    fill: #000000;
}

@media only screen and (min-width: 0px) {
    #carrucon .carrucel-container-dots {
        display: none;
    }
    .carrucel-mobile-correction {
        display: block;
    }

    .carrucel-mobile-pause-button {
        display: block;
    }

    .carrucel-mobile-correction .innerdotc_pause {
        top: 6px;
    }
}

@media only screen and (min-width: 768px) {
    #carrucon .carrucel-container-dots {
        display: none;
    }

    .carrucel-mobile-correction {
        display: block;
    }

    .carrucel-mobile-pause-button {
        display: block;
    }

    .carrucel-mobile-correction .innerdotc_pause {
        top: 6px;
    }
}

@media only screen and (max-width: 767px) {
	.carrucel-container-index {
		border-radius: 34px;
	}
}

.carrucel-mobile-correction {
    background-color: #e8e8ed;
    border-radius: 45px;
    padding: 10px 13px;
    margin: auto;
    width: 100%;
    max-width: fit-content;
}

.carrucel-mobile-pause-button {
    width: 30px;
    height: 30px;
    background-color: white;
    border-radius: 50px;
    cursor: pointer;
    margin-right: 10px;
}

.pause-icon-mobile {
    width: 25px;
    height: 25px;
	margin-top: 2px;
	margin-left: 3px;
}

.play-icon-mobile {
    width: 27px;
    height: 27px;
    margin-top: 1px;
    margin-left: 3px;
}

.play-icon-mobile {
    display: none;
}

/* ==================== +++ MAG +++ WORLD CUP +++ 260601 +++ ==================== */
.TN-kit-container {
    display: none;
}
.scroll-to-top {
	bottom: 75px !important;
}
</style> 

	<!-- ========== SLIDER ========== -->
	<!- MAG 260326 ->
	<div style="padding:0em 2em;width: calc(100% - 4em);overflow: hidden;margin: auto;">
		<div id="carrucon" class="containerflex-carrucel carrucel-container-index">

			<div class="block12 carrucel-container carrucel-aparecer">
				<a class="nodrag" href="https://mx.shopenzacta.com/productos/alfa-cafe-fusion/">
					<img class="visibledesk image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/261001_Banner_SH_Cafe_desk.jpg" loading="eager" fetchpriority="high" alt="Enzacta| Producto del mes">
					<img class="visibledevice image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/261001_Banner_SH_Cafe_mob.jpg" loading="eager" fetchpriority="high" alt="Enzacta | Producto del mes">
				</a>
			</div>
			<div class="block12 carrucel-container carrucel-desaparecer">
				<a class="nodrag" href="https://mx.shopenzacta.com/productos">
					<img class="visibledesk image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/260904_Banner_SH_EasyShop_desk.jpg" loading="eager" fetchpriority="high" alt="Easy Shop de Enzacta">
					<img class="visibledevice image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/260904_Banner_SH_EasyShop_mob.jpg" loading="eager" fetchpriority="high" alt="Easy Shop de Enzacta">
				</a>
			</div>
			<div class="block12 carrucel-container carrucel-aparecer">
				<a class="nodrag" href="https://mx.shopenzacta.com/productos/paquete-biovital360">
					<img class="visibledesk image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/260617_Banner_SH_BioVital_desk.jpg" loading="eager" fetchpriority="high" alt="Paquete BioVital360">
					<img class="visibledevice image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/260617_Banner_SH_BioVital_mob.jpg" loading="eager" fetchpriority="high" alt="Paquete BioVital360">
				</a>
			</div>
			<div class="block12 carrucel-container carrucel-aparecer">
				<a class="nodrag" href="https://mx.shopenzacta.com/productos/probio360">
					<img class="visibledesk image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/260609_Banner_SH_Probio_desk.jpg" loading="lazy" fetchpriority="high" alt="ProBio360 | Lanzamiento">
					<img class="visibledevice image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/260609_Banner_SH_Probio_mob_v2.jpg" loading="lazy" fetchpriority="high" alt="ProBio360 | Lanzamiento">
				</a>
			</div>
			<div class="block12 carrucel-container carrucel-aparecer">
				<a class="nodrag" href="https://mx.shopenzacta.com/productos/alfa-dha">
					<img class="visibledesk image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/2605_Banner_SH_DHA_desk.jpg" loading="lazy">
					<img class="visibledevice image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/2605_Banner_SH_DHA_mob.jpg" loading="lazy">
				</a>
			</div>
			<div class="block12 carrucel-container carrucel-aparecer">
				<a class="nodrag" href="https://mx.shopenzacta.com/productos/alfa-rxp-con-resveratrol">
					<img class="visibledesk image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/2603_Banner_SH_RXP_desktop.jpg" loading="lazy">
					<img class="visibledevice image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/2603_Banner_SH_RXP_mobile.jpg" loading="lazy">
				</a>
			</div>
			<div class="block12 carrucel-container carrucel-desaparecer">
				<a class="nodrag" href="https://mx.shopenzacta.com/productos/alfa-pxp-forte2">
					<img class="visibledesk image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/260312_Banner-FORTE-desk_v2.jpg" loading="lazy">
					<img class="visibledevice image_carrousel_main" src="https://enzactamedia.enzacta.com/shopenzacta/img/260312_Banner-FORTE-mob_v2.jpg" loading="lazy">
				</a>
			</div>

			<div class="block12 carrucel-container-dots" style="z-index: 5!important;">
				<table>
					<tr>

						<td class="dotscs">
							<div class="innerdotc_pause">
								<svg viewBox="0 0 20 20">
									<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
									<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
								</svg>
							</div>
							<div class="dotsc">
								<div class="innerbackdot"></div>
								<div class="innerdots"></div>
							</div>
						</td>
						<td class="dotscs">
							<div class="innerdotc_pause">
								<svg viewBox="0 0 20 20">
									<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
									<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
								</svg>
							</div>
							<div class="dotsc">
								<div class="innerdots"></div>
								<div class="innerbackdot"></div>
							</div>
						</td>
						<td class="dotscs">
							<div class="innerdotc_pause">
								<svg viewBox="0 0 20 20">
									<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
									<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
								</svg>
							</div>
							<div class="dotsc">
								<div class="innerdots"></div>
								<div class="innerbackdot"></div>
							</div>
						</td>
						<td class="dotscs">
							<div class="innerdotc_pause">
								<svg viewBox="0 0 20 20">
									<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
									<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
								</svg>
							</div>
							<div class="dotsc">
								<div class="innerdots"></div>
								<div class="innerbackdot"></div>
							</div>
						</td>
						<td class="dotscs">
							<div class="innerdotc_pause">
								<svg viewBox="0 0 20 20">
									<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
									<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
								</svg>
							</div>
							<div class="dotsc">
								<div class="innerdots"></div>
								<div class="innerbackdot"></div>
							</div>
						</td>
						<td class="dotscs">
							<div class="innerdotc_pause">
								<svg viewBox="0 0 20 20">
									<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
									<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
								</svg>
							</div>
							<div class="dotsc">
								<div class="innerdots"></div>
								<div class="innerbackdot"></div>
							</div>
						</td>
						<td class="dotscs">
							<div class="innerdotc_pause">
								<svg viewBox="0 0 20 20">
									<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
									<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
								</svg>
							</div>
							<div class="dotsc">
								<div class="innerdots"></div>
								<div class="innerbackdot"></div>
							</div>
						</td>
						
					</tr>
				</table>
			</div>
		</div>
	</div>

	<div class="carrucel-container-dots carrucel-mobile-correction">
		<table>
			<tr>
				<td>
					<div class="carrucel-mobile-pause-button">
						<svg class="pause-icon-mobile" viewBox="0 0 20 20">
							<rect x="5.7" y="5" width="3" height="10" rx="1.5" ry="1.5"/>
							<rect x="11.3" y="5" width="3" height="10" rx="1.5" ry="1.5"/>
						</svg>
						<svg class="play-icon-mobile"  viewBox="0 0 20 20">
							<path d="M13.7,9.2l-6.3-4.5c-.7-.5-1.6,0-1.6.8v9c0,.8.9,1.3,1.6.8l6.3-4.5c.6-.4.6-1.2,0-1.6Z"/>
						</svg>
					</div>
				</td>
				
				<td class="dotscs">
					<div class="innerdotc_pause">
						<svg viewBox="0 0 20 20">
							<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
							<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
						</svg>
					</div>
					<div class="dotsc">
						<div class="innerbackdot"></div>
						<div class="innerdots"></div>
					</div>
				</td>
				<td class="dotscs">
					<div class="innerdotc_pause">
						<svg viewBox="0 0 20 20">
							<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
							<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
						</svg>
					</div>
					<div class="dotsc">
						<div class="innerbackdot"></div>
						<div class="innerdots"></div>
					</div>
				</td>
				<td class="dotscs">
					<div class="innerdotc_pause">
						<svg viewBox="0 0 20 20">
							<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
							<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
						</svg>
					</div>
					<div class="dotsc">
						<div class="innerdots"></div>
						<div class="innerbackdot"></div>
					</div>
				</td>
				<td class="dotscs">
					<div class="innerdotc_pause">
						<svg viewBox="0 0 20 20">
							<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
							<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
						</svg>
					</div>
					<div class="dotsc">
						<div class="innerdots"></div>
						<div class="innerbackdot"></div>
					</div>
				</td>
				<td class="dotscs">
					<div class="innerdotc_pause">
						<svg viewBox="0 0 20 20">
							<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
							<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
						</svg>
					</div>
					<div class="dotsc">
						<div class="innerdots"></div>
						<div class="innerbackdot"></div>
					</div>
				</td>
				<td class="dotscs">
					<div class="innerdotc_pause">
						<svg viewBox="0 0 20 20">
							<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
							<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
						</svg>
					</div>
					<div class="dotsc">
						<div class="innerdots"></div>
						<div class="innerbackdot"></div>
					</div>
				</td>
				<td class="dotscs">
					<div class="innerdotc_pause">
						<svg viewBox="0 0 20 20">
							<path class="st0" d="M6.8,3.9h0c1.1,0,2,.9,2,2v8.3c0,1.1-.9,2-2,2h0c-1.1,0-2-.9-2-2V5.8c0-1.1.9-2,2-2Z"/>
							<rect class="st0" x="11.8" y="3.9" width="4" height="12.3" rx="2" ry="2"/>
						</svg>
					</div>
					<div class="dotsc">
						<div class="innerdots"></div>
						<div class="innerbackdot"></div>
					</div>
				</td>
				
			</tr>
		</table>
	</div>

	<!--KITS DISPLAYER-->
	<div class="TN-kit-container">
		<h2 class="TN-kit-title">Descubre combinaciones perfectas</h2>
		<div class="promotional-caroucel-container">
			<div class="carousel-promotional-container">
				<div class="carousel-promotional">
					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-sueno-reparador/">
								<img alt="Este kit es ideal para conseguir descanso profundo y reparador de manera natural. Los ingredientes naturales de los productos favorecen la relajación, promoviendo un despertar revitalizante." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/02-K-SUENO-REPARADOR-251211.png">
							</a>
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete SUEÑO REPARADOR
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$2,051<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-sueno-reparador/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>
					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-metabolico/">
								<img alt="Si buscas optimizar tu metabolismo, este kit es para ti. Sus fórmulas trabajan en conjunto para apoyar la función metabólica, mejorar la utilización de nutrientes y proporcionar un impulso energético sostenido, ayudándote a alcanzar tus objetivos de wellness y vitalidad."  class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/10-K-METABOLICO-260128.png" loading="lazy">
							</a>
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete METABÓLICO
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$2,551<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-metabolico/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>

					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-skin-care-basico/">	
								<img alt="UNDEW Limpiador Facial es el respiro que tu piel necesita, eliminando toxinas e limpiándolo suavemente con ingredientes 100% naturales."  class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/11-K-SKINCARE-251223.png" loading="lazy">
							</a>	
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete Skin Care básico UNDEW
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$2,494<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-skin-care-basico/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>


					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-antiestres/">
								<img alt="Este kit está diseñado para ayudarte a encontrar el equilibrio. Sus fórmulas actúan en sinergia para reducir el cortisol y la sensación de ansiedad, aumentar la energía de forma natural y mejorar la concentración, permitiéndote afrontar los desafíos diarios con mayor concentración." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/09-K-ANTI-ESTRES-251211.png" loading="lazy">
							</a>
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete ANTIESTRÉS
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$2,804<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-antiestres/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>
					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-balance-hormonal/">
								<img alt="Para quienes buscan armonía y wellness integral, este kit ofrece un soporte nutricional enfocado en el equilibrio hormonal. Sus fórmulas cuidadosamente seleccionadas trabajan en sinergia para favorecer la regulación hormonal, potenciando la vitalidad y promoviendo una sensación de bienestar general." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/07-K-BALANCE-HORMONAL-251211.png" loading="lazy">
							</a>
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete BALANCE HORMONAL
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$3,609<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-balance-hormonal/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>
					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-sistema-inmune/">	
								<img alt="Para quienes priorizan la protección y el wellness, este kit ofrece un soporte integral para el sistema inmune. Sus fórmulas exclusivas trabajan en sinergia para fortalecer las defensas naturales del cuerpo, potenciando la vitalidad y la resistencia ante los desafíos diarios." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/03-K-SISTEMA-INMUNE-251211.png">
							</a>
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete SISTEMA INMUNE
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$3,950<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-sistema-inmune/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>
					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-anti-inflamatorio/">
								<img alt="Este kit está diseñado para quienes buscan combatir la inflamación a través del poder de los antioxidantes, los cuales trabajan para neutralizar los radicales libres, reducir el daño celular y promover una respuesta inflamatoria saludable." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/06-K-ANTI-INFLAMATORIO-251211.png" loading="lazy">
							</a>
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete ANTI - INFLAMATORIO
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$4,697<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-anti-inflamatorio/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>
					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-alto-desempeno/">
								<img alt="Maximiza tu potencial, este kit ofrece un impulso energético y nutricional completo. Estos productos se combinan para optimizar el rendimiento físico y mental, permitiéndote alcanzar tus metas con mayor eficacia y vitalidad." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/04-K-ALTO-DESEMPENO-260128.png">
							</a>
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete ALTO DESEMPEÑO
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$5,359<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-alto-desempeno/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>
					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-cardio/">
								<img alt="Los productos incluidos en este kit trabajan en conjunto para favorecer la circulación, mantener niveles saludables de colesterol y proporcionar la energía necesaria para un corazón fuerte y vital." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/05-K-CARDIO-260128.png">
							</a>
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete CARDIO
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$6,312<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-cardio/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>
					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-colesterol-y-trigliceridos/">
								<img alt="Si buscas mantener un perfil lipídico saludable, este kit es para ti. Las fórmulas exclusivas de estos productos, apoyan la regulación de los niveles de colesterol y triglicéridos, contribuyendo a la salud cardiovascular general." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/01-K-COLESTEROL-Y-TRIGLICERIDOS-260128.png">
							</a>
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete COLESTEROL Y TRIGLICERIDOS
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$7,058<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-colesterol-y-trigliceridos/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>
					<div class="carousel-promotional-item">
						<div class="carousel-promotional-item-container">
							<div class="carousel-promotional-tag">KIT</div>
							<a href="https://mx.shopenzacta.com/productos/paquete-anti-envejecimiento/">
								<img alt="Desafía el paso del tiempo y revela una piel radiante y juvenil. Combinando el poder de los péptidos, antioxidantes y resveratrol, sus fórmulas avanzadas trabajan en sinergia para estimular la producción de colágeno, neutralizar los radicales libres y proteger la piel del daño ambiental. Experimenta una piel más firme, luminosa y visiblemente rejuvenecida." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/08-K-ANTI-ENVEGECIMIENTO-251211.png" loading="lazy">
							</a>
						</div>
						<div class="carousel-promotional-item-divider"></div>
						<div class="carousel-promotional-inner">
							<h3 class="carousel-promotional-subtitle">KITS FAVORITOS</h3>
							<h2 class="carousel-promotional-title">
								Paquete ANTI - ENVEJECIMIENTO
							</h2>
							<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
							<p class="carousel-promotional-price">$7,696<span>.00</span></p>
							<a class="container_button" href="https://mx.shopenzacta.com/productos/paquete-anti-envejecimiento/">
								<div class="carousel-promotional-button">
									COMPRAR
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="carousel-button-block">
					<div class="carousel-promotional-controls-left">
						<button id="prev">
							<svg class="carousel-promotional-arrow-icon_container" style="margin-right: 3px;" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 100 100">
								<path class="carousel-promotional-arrow-icon" d="M71.3,98.1c-2,0-4-.8-5.5-2.3L24.6,55.7c-1.5-1.5-2.4-3.5-2.4-5.7s.9-4.2,2.4-5.7L65.8,4.1c3.1-3.1,8.2-3,11.2.1,3.1,3.1,3,8.2-.1,11.2l-35.4,34.5,35.4,34.5c3.1,3.1,3.2,8.1.1,11.2-1.6,1.6-3.6,2.4-5.7,2.4Z"/>
							</svg>
						</button>
					</div>
					<div class="carousel-promotional-controls-right">
						<button id="next">
							<svg class="carousel-promotional-arrow-icon_container" style="margin-left: 3px;" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 100 100">
								<path class="carousel-promotional-arrow-icon" d="M30.1,98.1c2,0,4-.8,5.5-2.3l41.2-40.2c1.5-1.5,2.4-3.5,2.4-5.7s-.9-4.2-2.4-5.7L35.7,4.1c-3.1-3.1-8.2-3-11.2.1-3.1,3.1-3,8.2.1,11.2l35.4,34.5-35.4,34.5c-3.1,3.1-3.2,8.1-.1,11.2,1.6,1.6,3.6,2.4,5.7,2.4Z"/>
							</svg>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--PRODUCT CARDS-->
	<div class="wellnesssection_top"></div>
	<div class="TN-general-container wellnesssection" data-store="home-products-featured">
		<h2 class="TN-product-section-title">ENZACTA tiene productos ideales para tu vibra ¡Conócelos!</h2>
		<div class="TN-tab-container">
			<div class="TN-tab-element TN-tab-radious-all TN-tab-radious-left active" data-in="n1">Wellness</div>
			<div class="TN-tab-element TN-tab-radious-all TN-tab-radious-righttwo" data-in="n2">Vitality</div>
			<div class="TN-tab-element TN-tab-radious-all" data-in="n3">Skincare</div>
			<div class="TN-tab-element TN-tab-radious-all TN-tab-radious-right" data-in="n4">Partner Products</div>
		</div>
		<div class="TN-text-container">
			<p class="NT-product-description n1">Tu base de bienestar. Nutre tu cuerpo desde adentro con lo mejor de la naturaleza. Protección, equilibrio y la fuerza que necesitas para sentirte increíble todos los días.</p>
			<p class="NT-product-description n2">¿Buscas energía real y enfoque? Aquí encuentras la solución. Impulsa tu rendimiento, maneja el estrés y siéntete listo para todo. Tu fuente natural de vitalidad para vivir al máximo.</p>
			<p class="NT-product-description n3">Piel increíble, rutina simple. Limpia, tonifica y nutre tu rostro con nuestra línea pensada para ti. Combate los signos del tiempo y revela una piel luminosa, firme y radiante.</p>
			<p class="NT-product-description n4">Descubre nuestra selección exclusiva de productos naturales e innovadores. Tendencias a tu alcance para complementar tu bienestar. Checa de vez en cuando porque te podemos sorprender con novedades.</p>
		</div>

		<!-- ========== Wellness ========== -->

		<div class="containerflex container-product-display n1">
			
			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag wellness-tag">WELLNESS</div>
						
						<a href="https://mx.shopenzacta.com/productos/alfa-pxp-royale1/" target="_blank">
							<img alt="alfa PXP ROYALE está hecho de arroz morado con nuestro proceso propietario que preserva las propiedades de superfood del arroz morado, y aprovecha nutrientes esenciales para supercargar tu wellness." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/ROAYALEs-250428.png">
						</a>
						
						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="alfa PXP ROYALE suplemento de arroz morado con antioxidante" class="image-icon-product-tag callme-tag" data-in="CON ANTIOXIDANTE" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_antioxidante.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa PXP ROYALE suplemento de arroz morado sin gluten" class="image-icon-product-tag callme-tag" data-in="SIN GLUTEN" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_singluten.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa PXP ROYALE suplemento de arroz morado sin azúcar"  class="image-icon-product-tag callme-tag" data-in="SIN AZÚCAR" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_sinazucar.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa PXP ROYALE suplemento de arroz morado 100% natural"  class="image-icon-product-tag callme-tag" data-in="100% NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_100natural.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">WELLNESS</h3>
						<h2 class="product-promotional-title">
							alfa PXP ROYALE
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-0.029 0.015 0.029-17.837 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(8)</span>
						</div>
						<p class="NT-product-info">90 tomas (454 g) y 30 tomas (150 g)</p>
						<a class="NT-produc-seemore" href="https://mx.shopenzacta.com/alfa-pxp-royale/">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/alfa-pxp-royale1/" target="_blank">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag wellness-tag">WELLNESS</div>
						
						<a href="https://mx.shopenzacta.com/productos/alfa-pxp-forte2/" target="_blank">
							<img alt="alfa PXP FORTE aprovecha todos los nutrientes esenciales de superfood del arroz integral cosechado en su mejor etapa. Es un arroz orgánico de alta calidad proveniente de Tailandia, rico en polisacáridos péptidos, con ocho carbohidratos, y enriquecido con alga espirulina." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/FORTEs-260129b.png">
						</a>
						
						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="alfa PXP FORTE suplemento de arroz integral con espirulina" class="image-icon-product-tag callme-tag" data-in="CON ESPIRULINA" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_espirulina.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa PXP FORTE suplemento de arroz integral sin gluten" class="image-icon-product-tag callme-tag" data-in="SIN GLUTEN" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_singluten.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa PXP FORTE suplemento de arroz integral sin azúcar" class="image-icon-product-tag callme-tag" data-in="SIN AZÚCAR" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_sinazucar.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa PXP FORTE suplemento de arroz integral 100% natural" class="image-icon-product-tag callme-tag" data-in="100% NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_100natural.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">WELLNESS</h3>
						<h2 class="product-promotional-title">
							alfa PXP FORTE
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(4)</span>
						</div>
						<p class="NT-product-info">90 tomas (454 g) y 30 tomas (150 g)</p>
						<a href="https://mx.shopenzacta.com/alfa-pxp-forte/" class="NT-produc-seemore">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/alfa-pxp-forte2/" target="_blank">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag wellness-tag">WELLNESS</div>
						
						<a href="https://mx.shopenzacta.com/productos/alfa-rxp-con-resveratrol/" target="_blank">
							<img class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/RXP-250428.png">
						</a>
						
						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="alfa RXP es un gel shot con 3 veces más resveratrol" class="image-icon-product-tag callme-tag" data-in="3 VECES MÁS RESVERATROL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_resveratrol.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa RXP es un gel shot con antioxidantes" class="image-icon-product-tag callme-tag" data-in="CON ANTIOXIDANTES" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_antioxidante.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa RXP es un gel shot con delicioso sabor" class="image-icon-product-tag callme-tag" data-in="DELICIOSO SABOR" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_deliciososabor.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa RXP es un gel shot 100% natural" class="image-icon-product-tag callme-tag" data-in="100% NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_100natural.png">
							</div>
						</div>

					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">WELLNESS</h3>
						<h2 class="product-promotional-title">
							alfa RXP
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(4)</span>
						</div>
						<p class="NT-product-info">30 sobres (30 ml c/u)</p>
						<a href="https://mx.shopenzacta.com/alfa-rxp/" class="NT-produc-seemore">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/alfa-rxp-con-resveratrol/" target="_blank">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag wellness-tag">WELLNESS</div>
						
						<a href="https://mx.shopenzacta.com/productos/alfa-dha/" target="_blank">
							<img alt="alfa DHA OMEGA 3 viene en presentación de perlas hechas a base de ingredientes naturales. Sus aceites esenciales contribuyen a la salud de tu corazón, ojos y cerebro." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/DHA-250428.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="alfa DHA es un suplemento con 80% DHA" class="image-icon-product-tag callme-tag" data-in="80% DHA" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_80dha.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa DHA es un suplemento con omega-3 de alta calidad" class="image-icon-product-tag callme-tag" data-in="OMEGA 3 DE ALTA CALIDAD" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_omega3.png">
							</div>
							<div class="img-wrapper-tag">
								<img  alt="alfa DHA es un suplemento para mejorar la concentración" class="image-icon-product-tag callme-tag" data-in="MEJORA LA CONCENTRACIÓN" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_mejorconcentracion.png">
							</div>
							<div class="img-wrapper-tag">
								<img  alt="alfa DHA es un suplemento 100% natural" class="image-icon-product-tag callme-tag" data-in="100% NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_100natural.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">WELLNESS</h3>
						<h2 class="product-promotional-title">
							alfa DHA
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
							<div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
								<img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
								<img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
								<img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
								<img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
								<img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
							</div>
							<span>(2)</span>
						</div>
						<p class="NT-product-info">180 y 60 cápsulas</p>
						<a href="https://mx.shopenzacta.com/alfa-dha/" class="NT-produc-seemore">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/alfa-dha/" target="_blank">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag wellness-tag">WELLNESS</div>
						
						<a href="https://mx.shopenzacta.com/productos/alfa-hfi2/" target="_blank">
							<img alt="alfa HFI contiene ácidos húmico y fúlvico, que protegen tus células de manera natural, impidiendo que los virus y bacterias entren a tu cuerpo. Esta fuente concentrada de aminoácidos y minerales esenciales, como calcio, magnesio, cobre y zinc, eleva tus defensas para ayudarte a evitar enfermedades." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/HFI-250428.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="alfa HFI es un suplemento que refuerza inmunidad" class="image-icon-product-tag callme-tag" data-in="REFUERZA INMUNIDAD" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_inmunidad.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa HFI es un suplemento que contiene minerales escenciales" class="image-icon-product-tag callme-tag" data-in="MINERALES ESENCIALES" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_minerales.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa HFI es un suplemento con calcio, magnesio, cobre y zinc" class="image-icon-product-tag callme-tag" data-in="CON CALCIO, MAGNESIO, COBRE Y ZINC" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_cmcz.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa HFI es un suplemento 100% natural" class="image-icon-product-tag callme-tag" data-in="100% NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_100natural.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">WELLNESS</h3>
						<h2 class="product-promotional-title">
							alfa HFI
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(3)</span>
						</div>
						<p class="NT-product-info">180 y 90 cápsulas</p>
						<a href="https://mx.shopenzacta.com/alfa-hfi/" class="NT-produc-seemore">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/alfa-hfi2/" target="_blank">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

		</div>

		<!-- ========== Vitality ========== -->

		<div class="containerflex container-product-display n2">
			
			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag vitality-tag">VITALITY</div>
						
						<a href="https://mx.shopenzacta.com/productos/alfa-b12/" target="_blank">

							
							<img alt="La vitamina B12 es un nutriente esencial involucrado en todas tus funciones metabólicas. Ayuda a mantener la salud de tu cerebro y a reducir el riesgo de enfermedades de los ojos." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/B-12-250429.png">
						
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="alfa B-12 es un suplemento de tabletas sublinguales" class="image-icon-product-tag callme-tag" data-in="TABLETAS SUBLINGUALES" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_sublingual.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa B-12 es un suplemento de rápida absorción" class="image-icon-product-tag callme-tag" data-in="RÁPIDA ABSORCIÓN" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_absorcion.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa B-12 es un suplemento sin azúcar" class="image-icon-product-tag callme-tag" data-in="SIN AZÚCAR" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_sinazucar.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa B-12 es un suplemento 100% natural" class="image-icon-product-tag callme-tag" data-in="100% NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_100natural.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">VITALITY</h3>
						<h2 class="product-promotional-title">
							alfa B-12
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(1)</span>
						</div>
						<p class="NT-product-info">30 tabletas</p>
						<a href="https://mx.shopenzacta.com/alfa-b-12/" class="NT-produc-seemore">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/alfa-b12/" target="_blank">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag vitality-tag">VITALITY</div>
						
						<a href="https://mx.shopenzacta.com/productos/alfa-energy/" target="_blank">
							<img alt="La exclusiva fórmula líquida de alfa ENERGY libera el potencial del agua que bebes, transformándola en un suplemento para mejorar tu hidratación." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/ENERGY-250428.png">
						</a>
						
						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="alfa ENERGY alcaliniza el agua" class="image-icon-product-tag callme-tag" data-in="ALCALINIZA TU AGUA" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_alcaliniza.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa ENERGY mejora tu hidratación" class="image-icon-product-tag callme-tag" data-in="MEJORA TU HIDRATACIÓN" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_hidratacion.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa ENERGY es 100% natural" class="image-icon-product-tag callme-tag" data-in="100% NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_100natural.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">VITALITY</h3>
						<h2 class="product-promotional-title">
							alfa ENERGY
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(2)</span>
						</div>
						<p class="NT-product-info">240 y 120 ml</p>
						<a href="https://mx.shopenzacta.com/alfa-energy/" class="NT-produc-seemore">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/alfa-energy/" target="_blank">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag vitality-tag">VITALITY</div>
						
						<a href="https://mx.shopenzacta.com/productos/alfa-pxp-extreme/" target="_blank">
							<img alt="alfa PXP EXTREME te da un boost de energía gracias a su fórmula con betabel, L-arginina y L-citrulina. Siente cómo mejora tu resistencia, fuerza y recuperación muscular. Además, contiene Coffeeberry, una fuente natural de cafeína que te da energía, y vitamina C para fortalecer tu sistema inmunológico." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/EXTREME-250428.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="alfa PXP EXTREME es un suplemento deportivo que da energía natural" class="image-icon-product-tag callme-tag" data-in="ENERGÍA NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_energianatural.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa PXP EXTREME es un suplemento deportivo con coffeeberry" class="image-icon-product-tag callme-tag" data-in="CON COFFEEBERRY" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_coffeeberry.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa PXP EXTREME es un suplemento deportivo que es 100% natural" class="image-icon-product-tag callme-tag" data-in="100% NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_100natural.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">VITALITY</h3>
						<h2 class="product-promotional-title">
							alfa PXP EXTREME
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(2)</span>
						</div>
						<p class="NT-product-info">30 sobres (5.3 g c/u)</p>
						<a href="https://mx.shopenzacta.com/alfa-pxp-extreme/" class="NT-produc-seemore">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/alfa-pxp-extreme/" target="_blank">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag vitality-tag">VITALITY</div>
						
						<a href="https://mx.shopenzacta.com/productos/alfa-cafe-fusion/" target="_blank">
							<img alt="alfa CAFÉ FUSION Signature Blend está hecho con granos de café 100% arábigo colombiano, adicionado con Coffeeberry, para darte sabor, aroma y salud en cada taza." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/261001_Cafe_v2.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="alfa CAFÉ FUSION Signature Blend es un café con antioxidante" class="image-icon-product-tag callme-tag" data-in="CON ANTIOXIDANTES" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_antioxidante.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa CAFÉ FUSION Signature Blend es un café con café arabigo colombiano" class="image-icon-product-tag callme-tag" data-in="CAFÉ ARABIGO COLOMBIANO" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_cafecolombiano.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa CAFÉ FUSION Signature Blend es un café con coffeeberry" class="image-icon-product-tag callme-tag" data-in="CON COFFEEBERRY" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_coffeeberry.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="alfa CAFÉ FUSION Signature Blend es un café 100% natural" class="image-icon-product-tag callme-tag" data-in="100% NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_100natural.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">VITALITY</h3>
						<h2 class="product-promotional-title">
							alfa CAFÉ FUSION Signature Blend
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(1)</span>
						</div>
						<p class="NT-product-info">30 sobres (2.5 g c/u)</p>
						<a href="https://mx.shopenzacta.com/alfa-cafe-nutra-signature-blend/" class="NT-produc-seemore">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/alfa-cafe-fusion/" target="_blank">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

		</div>

		<!-- ========== Skincare ========== -->

		<div class="containerflex container-product-display n3">
			
			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag skincare-tag">SKINCARE</div>
						
						<a href="https://mx.shopenzacta.com/productos/undew-limpiador-facial/" target="_blank">
							<img alt="El primer paso en nuestra rutina para el cuidado de la piel. UNDEW Limpiador Facial hidrata con su textura suave y cremosa, calma y relaja la piel gracias a sus propiedades anti-inflamatorias, dejando un aroma fresco en la piel." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/LIMPIADOR-260225.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="UNDEW Limpiador Facial es un limpiador facial sin parabenos" class="image-icon-product-tag callme-tag" data-in="SIN PARABENOS" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_sinparabenos.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="UNDEW Limpiador Facial es un limpiador facial sin fragancia" class="image-icon-product-tag callme-tag" data-in="SIN FRAGANCIAS" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_sinfragancias.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="UNDEW Limpiador Facial es un limpiador facial para todas las pieles" class="image-icon-product-tag callme-tag" data-in="PARA TODAS LAS PIELES" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_todaspieles.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="UNDEW Limpiador Facial es un limpiador facial 100% natural" class="image-icon-product-tag callme-tag" data-in="100% NATURAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_100natural.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">SKINCARE</h3>
						<h2 class="product-promotional-title">
							UNDEW Limpiador Facial
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(1)</span>
						</div>
						<p class="NT-product-info">100 ml</p>
						<a href="https://mx.shopenzacta.com/undew-facial-cleanser/" class="NT-produc-seemore">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/undew-limpiador-facial/" target="_blank">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			
			
		</div>

		<!-- ========== Partner Products ========== -->

		<div class="containerflex container-product-display n4">

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag partner-tag">PARTNER PRODUCTS</div>
						
						<a href="https://mx.shopenzacta.com/productos/probio360/">
							<img alt="ProBio360 es la solución integral diseñada para proteger y optimizar tu 'segundo cerebro': el intestino" src="https://enzactamedia.enzacta.com/shopenzacta/img/ProBio_Logo__260901.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="PROBIOO360" class="image-icon-product-tag callme-tag" data-in="REFUERZA TU MICROBIOTA" src="https://enzactamedia.enzacta.com/shopenzacta/img/icon_microbiota.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="PROBIOO360" class="image-icon-product-tag callme-tag" data-in="DIGESTIÓN LIGERA" src="https://enzactamedia.enzacta.com/shopenzacta/img/icon_digestionligera.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="PROBIOO360" class="image-icon-product-tag callme-tag" data-in="SALUD DIGESTIVA INTEGRAL" src="https://enzactamedia.enzacta.com/shopenzacta/img/icon_saluddigestivaintegral.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">PARTNER PRODUCTS</h3>
						<h2 class="product-promotional-title">
							ProBio360
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
							<div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
								<img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
								<img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
								<img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
								<img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
								<img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
							</div>
							<span>(0)</span>
						</div>
						<p class="NT-product-info" style="margin-bottom: 40px;">60 cápsulas</p>
						<a href="https://mx.shopenzacta.com/productos/" class="NT-produc-seemore" style="display:none;">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/probio360/">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>
			
			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag partner-tag">PARTNER PRODUCTS</div>
						
						<a href="https://mx.shopenzacta.com/productos/vitamina-c/" target="_blank">
							<img alt="Potencia tu wellness con nuestra fórmula única de jengibre, vitamina C y cúrcuma. Esta poderosa combinación te brinda una protección antioxidante superior, reduciendo la inflamación y fortaleciendo tu sistema inmunológico." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/AP-INUMNE-250428b.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="Vitamina C es un suplemento que contiene antioxidantes" class="image-icon-product-tag callme-tag" data-in="CON ANTIOXIDANTES" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_antioxidante.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="Vitamina C es un suplemento que refuerza tu sistema inmune" class="image-icon-product-tag callme-tag" data-in="REFUERZA INMUNIDAD" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_inmunidad.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="Vitamina C es un suplemento que mejora tu salud digestiva" class="image-icon-product-tag callme-tag" data-in="SALUD DIGESTIVA" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono-saluddigestiva.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">PARTNER PRODUCTS</h3>
						<h2 class="product-promotional-title">
							Vitamina C
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-0.029 0.015 0.029-17.837 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(2)</span>
						</div>
						<p class="NT-product-info" style="margin-bottom: 40px;">60 cápsulas</p>
						<a href="https://mx.shopenzacta.com/productos/vitamina-c/" class="NT-produc-seemore" style="display:none;">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/vitamina-c/" >
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag partner-tag">PARTNER PRODUCTS</div>
						
						<a href="https://mx.shopenzacta.com/productos/vitamina-d3-k2-78t2c/">
							<img alt="Potencia tu sistema de defensa interno con la fórmula sinérgica más avanzada del mercado! Nuestra Vitamina D3 + K2 fue diseñada para el consumidor que exige la máxima potencia y eficacia en su régimen de salud integral" src="https://enzactamedia.enzacta.com/shopenzacta/img/VitaminaD3-K2-251209.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="VITAMINA D3 + K2 es un suplemento que refuerza tu sistema inmune" class="image-icon-product-tag callme-tag" data-in="REFUERZA INMUNIDAD" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_inmunidad.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="VITAMINA D3 + K2 es un suplemento que cuida el corazón" class="image-icon-product-tag callme-tag" data-in="CUIDA EL CORAZÓN" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_cuidacorazon.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="VITAMINA D3 + K2 es un suplemento ayuda a tener huesos sanos" class="image-icon-product-tag callme-tag" data-in="HUESOS SANOS" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_huesossanos.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">PARTNER PRODUCTS</h3>
						<h2 class="product-promotional-title">
							VITAMINA D3 + K2
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
						<p class="NT-product-info" style="margin-bottom: 40px;">150 cápsulas</p>
						<a href="https://mx.shopenzacta.com/productos/vitamina-d3-k2-78t2c/" class="NT-produc-seemore" style="display:none;">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/vitamina-d3-k2-78t2c/">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag partner-tag">PARTNER PRODUCTS</div>
						
						<a href="https://mx.shopenzacta.com/productos/magnesio/">
							<img alt="Enriquece tus días y descansa mejor por las noches con nuestra versión exclusiva de Magnesio con Vitamina C, diseñada para complementar tu vida wellness. Esta fórmula única combina cuatro formas de magnesio, un mineral esencial para numerosas funciones en el organismo, junto con vitamina C, para darte un boost de antioxidantes." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/261001_M4gnesio_v3.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="M4gnesio es un suplemento sin gluten" class="image-icon-product-tag callme-tag" data-in="SIN GLUTEN" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_singluten.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="M4gnesio es un suplemento que cuida el corazón" class="image-icon-product-tag callme-tag" data-in="CUIDA EL CORAZÓN" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_cuidacorazon.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="M4gnesio es un suplemento ayuda a tener huesos sanos" class="image-icon-product-tag callme-tag" data-in="HUESOS SANOS" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_huesossanos.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">PARTNER PRODUCTS</h3>
						<h2 class="product-promotional-title">
							Magnesio
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Excelente">
						    </div>
						    <span>(5)</span>
						</div>
						<p class="NT-product-info" style="margin-bottom: 40px;">60 cápsulas</p>
						<a href="https://mx.shopenzacta.com/productos/magnesio/" class="NT-produc-seemore" style="display:none;">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/magnesio/">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag partner-tag">PARTNER PRODUCTS</div>
						
						<a href="https://mx.shopenzacta.com/productos/nutricab-shampoo/">	
							<img alt="NutriCab Shampoo: fórmula única que combina todos los ingredientes más conocidos para el cuidado capilar en un solo producto" class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/NC-Shampoo-250428b.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="NutriCab Shampoo estumila el crecimiento capilar" class="image-icon-product-tag callme-tag" data-in="ESTIMULA CRECIMIENTO" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_crecimiento.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="NutriCab Shampoo previene la caida del cabello" class="image-icon-product-tag callme-tag" data-in="PREVIENE CAIDA" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_previenecaida.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="NutriCab Shampoo deja el cabello suave y manejable" class="image-icon-product-tag callme-tag" data-in="CABELLO SUAVE Y MANEJABLE" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_cabellosuave.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">PARTNER PRODUCTS</h3>
						<h2 class="product-promotional-title">
							NutriCab Shampoo
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
						<p class="NT-product-info" style="margin-bottom: 40px;">500 ml</p>
						<a href="https://mx.shopenzacta.com/productos/nutricab-shampoo/" class="NT-produc-seemore" style="display:none;">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/nutricab-shampoo/">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="block03f">
				<div class="product-promotional-item">
					<div class="image-container-product">
						<div class="carousel-promotional-tag partner-tag">PARTNER PRODUCTS</div>
						
						<a href="https://mx.shopenzacta.com/productos/nutricab-acondicionador/">
							<img alt="NutriCab Acondicionador: El complemento perfecto para lucir un cabello hermoso y visiblemente sano." class="carousel-promotional-image-item" src="https://enzactamedia.enzacta.com/shopenzacta/img/NC-Acondicionador-250428b.png">
						</a>

						<div class="product-promotional-icon-container">
							<div class="img-wrapper-tag">
								<img alt="NutriCab Acondicionador fortalece la raíz del cabello" class="image-icon-product-tag callme-tag" data-in="FORTALECE LA RAÍZ" src="https://enzactamedia.enzacta.com/shopenzacta/img/icon_fortalezaraiz.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="NutriCab Acondicionador protege tu cabello del daño ambiental" class="image-icon-product-tag callme-tag" data-in="PROTEGE DEL DAÑO" src="https://enzactamedia.enzacta.com/shopenzacta/img/icon_protegedano.png">
							</div>
							<div class="img-wrapper-tag">
								<img alt="NutriCab Acondicionador deja el cabello suave y manejable" class="image-icon-product-tag callme-tag" data-in="CABELLO SUAVE Y MANEJABLE" src="https://enzactamedia.enzacta.com/shopenzacta/img/icono_cabellosuave.png">
							</div>
						</div>
					</div>
					<div class="product-promotional-item-divider"></div>
					<div class="carousel-promotional-inner">
						<h3 class="carousel-promotional-subtitle">PARTNER PRODUCTS</h3>
						<h2 class="product-promotional-title">
							NutriCab Acondicionador
						</h2>
						<div class="reviewsapp reviewsapp-productRating recife">
						    <div class="reviewsapp-rating reviewsapp-readOnly" data-score="5.0" title="Excelente">
						        <img alt="1" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="2" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="3" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="4" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						        <img alt="5" src="data:image/svg+xml;utf8,&lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; width=&quot;17&quot; height=&quot;17&quot; viewBox=&quot;0 0 32 32&quot;&gt;&lt;path fill=&quot;%23eea500&quot; d=&quot;M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798zM16 23.547l-6.983 3.671 1.334-7.776-5.65-5.507 7.808-1.134 3.492-7.075 3.492 7.075 7.807 1.134-5.65 5.507 1.334 7.776-6.983-3.671z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;" title="Not rated yet!">
						    </div>
						    <span>(0)</span>
						</div>
						<p class="NT-product-info" style="margin-bottom: 40px;">500 ml</p>
						<a href="https://mx.shopenzacta.com/productos/nutricab-acondicionador/" class="NT-produc-seemore" style="display:none;">
							Saber más >
						</a>
						<a class="container_button" href="https://mx.shopenzacta.com/productos/nutricab-acondicionador/">
							<div class="product-promotional-button">
								COMPRAR
							</div>
						</a>
					</div>
				</div>
			</div>

		</div>

		<div class="return_top_arrow" style="display: none;">
			<img class="return_top_arrow_img" src="https://enzactamedia.enzacta.com/shopenzacta/img/return_flecha.svg">
		</div>

	</div>

	<!-- ========== COFFEE AD ========== -->
	<div class="RT_body_container fullme TN_coffespecial">
		
		<div class="containerflex">
			<div class="block05 RT_product_img_back">
				<img alt="alfa CAFÉ FUSION Signature Blend está hecho con granos de café 100% arábigo colombiano, adicionado con Coffeeberry, para darte sabor, aroma y salud en cada taza." class="RT_product_img" alt="producto alfa RXP con resveratrol" src="https://enzactamedia.enzacta.com/shopenzacta/img/coffe.png">
			</div>
			<div class="block05 RT_background_chicle">
				<div class="RT_description_inner_block">
					<h2 class="RT_product_title">Eleva el placer de tu café diario.</h2>
					<p class="RT_product_description">Disfruta nuestro café: puro Arábica colombiano con Coffeeberry<sup style="font-size:x-small;line-height: 0;">&copy;</sup>. Mejora tu bienestar con poderosos antioxidantes en cada sorbo.</p>
					<div class="RT_divider_product"></div>
					<h3 class="RT_product_subtitle">alfa CAFÉ FUSION Signature Blend</h3>
					<p class="RT_product_description_small">30 sobres (2.5 g c/u) </p>
					<p class="RT_product_price">$808<span>.00</span></p>
					<p class="RT_product_description_small" style="margin-bottom: 20px;"><strong>($27 por cada sobre)</strong></p>
					<a href="https://mx.shopenzacta.com/productos/alfa-cafe-fusion/">
						<div class="RT_buy_button">COMPRAR</div>
					</a>
				</div>
			</div>
		</div>

	</div>

<script type="text/javascript">
		let encual = 0;
		let delay = 7000;
		let lastStartTime = Date.now();
		let isPaused = false;
		let animationFrame = null;

		const slides = document.querySelectorAll('.carrucel-container:not(.carrucel-container-dots)');
		const dots = document.querySelectorAll('.containerflex-carrucel .dotscs .dotsc');
		const outdots = document.querySelectorAll('.containerflex-carrucel .dotscs');

		const dots2 = document.querySelectorAll('.carrucel-mobile-correction .dotscs .dotsc');
		const outdots2 = document.querySelectorAll('.carrucel-mobile-correction .dotscs');

		const mobilepause = document.querySelectorAll('.carrucel-mobile-correction .carrucel-mobile-pause-button');

		const totalcual = slides.length;

		let progressDot = null;
		let progressDot2 = null;

		function updateCarousel() {
		    slides.forEach((slide, index) => {
		        slide.classList.toggle('carrucel-aparecer', index === encual);
		        slide.classList.toggle('carrucel-desaparecer', index !== encual);
		    });

		    dots.forEach((dot, index) => {
		        dot.classList.toggle('dots-active', index === encual);
		        const inner = dot.querySelector('.innerdots');
		        inner.style.width = '0%';
		    });

		    dots2.forEach((dot2, index) => {
		        dot2.classList.toggle('dots-active', index === encual);
		        const inner = dot2.querySelector('.innerdots');
		        inner.style.width = '0%';
		    });


		    innerb = document.querySelectorAll('.innerdotc_pause');
				innerb.forEach(el => {
				  el.classList.remove('active', 'noactive');
			});

			if(isPaused == true)
			{
				isPaused = false;
				lastStartTime = Date.now();

				innerb = document.querySelector('.carrucel-mobile-correction .carrucel-mobile-pause-button').querySelector('.pause-icon-mobile');
		        innerb.style.display = 'initial';

		        innerb = document.querySelector('.carrucel-mobile-correction .carrucel-mobile-pause-button').querySelector('.play-icon-mobile');
		        innerb.style.display = 'none';
			}
			else
			{
				lastStartTime = Date.now();
			}
			
		    progressDot = dots[encual].querySelector('.innerdots');
		    progressDot2 = dots2[encual].querySelector('.innerdots');
		    animateProgress();
		}

		function nextSlide() {
		    encual = (encual + 1) % totalcual;
		    cancelAnimationFrame(animationFrame);

		    updateCarousel();
		}

		function animateProgress() {
		    const now = Date.now();
		    const elapsed = now - lastStartTime;
		    const percent = Math.min(elapsed / delay, 1);

		    if (progressDot) {
		        progressDot.style.width = (percent * 100) + '%';
		    }

		    if (progressDot2) {
		        progressDot2.style.width = (percent * 100) + '%';
		    }

		    if (percent < 1 && !isPaused) {
		        animationFrame = requestAnimationFrame(animateProgress);
		    } else if (!isPaused && percent >= 1) {
		        nextSlide();
		    }
		}

		dots.forEach((dot, index) => {
		    dot.addEventListener('click', () => {
		        encual = index;
		        cancelAnimationFrame(animationFrame);
		        updateCarousel();
		    });
		});

		dots2.forEach((dot2, index) => {
		    dot2.addEventListener('click', () => {
		        encual = index;
		        cancelAnimationFrame(animationFrame);
		        updateCarousel();
		    });
		});

		mobilepause.forEach((bot, index) => {
		    bot.addEventListener('click', () => {
		        if(isPaused == false)
		        {
		        	innerb = bot.querySelector('.pause-icon-mobile');
		        	innerb.style.display = 'none';

		        	innerb = bot.querySelector('.play-icon-mobile');
		        	innerb.style.display = 'initial';

		        	isPaused = true;
			        cancelAnimationFrame(animationFrame);
			        const pauseicon = outdots[encual].querySelector('.innerdotc_pause');
			        const pauseicon2 = outdots2[encual].querySelector('.innerdotc_pause');
			        if (pauseicon) pauseicon.classList.add('active');
            		if (pauseicon2) pauseicon2.classList.add('active');	

		        }
		        else
		        {

		        	innerb = bot.querySelector('.pause-icon-mobile');
		        	innerb.style.display = 'initial';

		        	innerb = bot.querySelector('.play-icon-mobile');
		        	innerb.style.display = 'none';

		        	isPaused = false;
			        lastStartTime = Date.now() - parseFloat(progressDot.style.width) / 100 * delay;

			        const pauseicon = outdots[encual].querySelector('.innerdotc_pause');
			        const pauseicon2 = outdots2[encual].querySelector('.innerdotc_pause');
			         if (pauseicon) pauseicon.classList.remove('active');
            		if (pauseicon2) pauseicon2.classList.remove('active');

			      	
			        animateProgress();
		        }
		    });
		});

		slides.forEach((slide, index) => {
		    slide.addEventListener('mouseenter', () => {
		        isPaused = true;
		        cancelAnimationFrame(animationFrame);
		        const pauseicon = outdots[encual].querySelector('.innerdotc_pause');
		        const pauseicon2 = outdots2[encual].querySelector('.innerdotc_pause');
		        if (pauseicon) {
		            pauseicon.classList.toggle('active', index === encual);
		        }
		        if (pauseicon2) {
		            pauseicon2.classList.toggle('active', index === encual);
		        }	
		    });

		    slide.addEventListener('mouseleave', () => {
		        isPaused = false;
		        innerb = document.querySelectorAll('.pause-icon-mobile');
				innerb.forEach(el => {
				  el.style.display = 'initial';
				});

				innerb = document.querySelectorAll('.play-icon-mobile');
				innerb.forEach(el => {
				  el.style.display = 'none';
				});

		        lastStartTime = Date.now() - parseFloat(progressDot.style.width) / 100 * delay;
		        const pauseicon = outdots[encual].querySelector('.innerdotc_pause');
		        const pauseicon2 = outdots2[encual].querySelector('.innerdotc_pause');
		        if (pauseicon) {
		            pauseicon.classList.remove('active', 'noactive');
		        }
		        if (pauseicon2) {
		            pauseicon2.classList.remove('active', 'noactive');
		        }

		        animateProgress();
		    });
		});

		updateCarousel();

		let touchStartX = 0;
		let touchEndX = 0;

		slides.forEach((slide) => {
		    slide.addEventListener('touchstart', (e) => {
		        touchStartX = e.changedTouches[0].screenX;
		    });

		    slide.addEventListener('touchend', (e) => {
		        touchEndX = e.changedTouches[0].screenX;
		        handleSwipeGesture();
		    });
		});

		function handleSwipeGesture() {
		    const swipeThreshold = 50;

		    if (touchEndX < touchStartX - swipeThreshold) {
		
		        encual = (encual + 1) % totalcual;
		        cancelAnimationFrame(animationFrame);
		        updateCarousel();
		    }

		    if (touchEndX > touchStartX + swipeThreshold) {
		 
		        encual = (encual - 1 + totalcual) % totalcual;
		        cancelAnimationFrame(animationFrame);
		        updateCarousel();
		    }
		}

		function ajustarAltura() {

		    const contenedor = document.querySelector('.containerflex-carrucel.carrucel-container-index');
		    const alturacontenedordevice = document.querySelector('.visibledevice.image_carrousel_main');
		    const alturacontenedor = document.querySelector('.visibledesk.image_carrousel_main');

		    if (window.innerWidth >= 768)
		    {
		    	 contenedor.style.height = alturacontenedor.offsetHeight +'px';
		    }
		    else
		    {
		    	 contenedor.style.height = alturacontenedordevice.offsetHeight +'px';
		    }   
		}

		window.addEventListener("load", function() {
		  ajustarAltura();
		});

		window.addEventListener('resize', ajustarAltura);

		//// promotional carousel

		let currentIndex = 0;
		const carousel = $('.carousel-promotional');
		const totalItems = $('.carousel-promotional-item').length;

		function updateButtons() {
			const containerWidth = $('.carousel-promotional-container').width();
			const itemWidth = $('.carousel-promotional-item').outerWidth();
			const maxIndex = totalItems - Math.floor(containerWidth / (itemWidth + 40));

			if (currentIndex <= 0) {
				$('#prev').addClass('hideme');
			} else {
				$('#prev').removeClass('hideme');
			}

			if (currentIndex >= maxIndex) {
				$('#next').addClass('hideme');
			} else {
				$('#next').removeClass('hideme');
			}
		}

		function moveCarousel() {
			const containerWidth = $('.carousel-promotional-container').width();
			const itemWidth = $('.carousel-promotional-item').outerWidth();
			const maxTranslateX = (itemWidth + 40) * totalItems - containerWidth;
			const newTransform = -currentIndex * (itemWidth + 40);

			if (newTransform < -maxTranslateX) {
				carousel.css('transform', `translateX(${-maxTranslateX}px)`);
			} else if (newTransform > 0) {
				carousel.css('transform', `translateX(0px)`);
			} else {
				carousel.css('transform', `translateX(${newTransform}px)`);
			}

			updateButtons();
		}

		$('#next').click(function () {
			const containerWidth = $('.carousel-promotional-container').width();
			const itemWidth = $('.carousel-promotional-item').outerWidth();
			const maxIndex = totalItems - Math.floor(containerWidth / (itemWidth + 40));

			if (currentIndex < maxIndex) {
				currentIndex++;
				moveCarousel();
			}
		});

		$('#prev').click(function () {
			if (currentIndex > 0) {
				currentIndex--;
				moveCarousel();
			}
		});

		$(window).resize(function () {
			moveCarousel();
		});

		// Swipe support for mobile
		let startX = 0;
		let currentX = 0;
		let isDragging = false;

		carousel.on('touchstart', function (e) {
			startX = e.originalEvent.touches[0].clientX;
			isDragging = true;
		});

		carousel.on('touchmove', function (e) {
			if (!isDragging) return;
			currentX = e.originalEvent.touches[0].clientX;
		});

		carousel.on('touchend', function (e) {
			if (!isDragging) return;
			isDragging = false;

			const diffX = startX - currentX;
			const threshold = 50;

			if (diffX > threshold) {
				$('#next').click();
			} else if (diffX < -threshold) {
				$('#prev').click();
			}
		});

		// Initial setup
		$(document).ready(function () {
			moveCarousel();
		});

		/////CAROUSEL DRAG ACTION
		mouseposx = 0;
		xPrev = 0;
		$("#carrucon").bind('mousedown', function(event) {
			mouseposx = event.screenX;
		});
		$("#carrucon").bind('mouseup', function(event) {
			if(mouseposx > event.screenX)
			{
				clearInterval(myInterval);
				nextSlide();
				$(".nodrag").css('pointer-events', 'none');
	   		 	$('.nodrag').click(function(event) {
			      event.preventDefault(); 
			    });
			}
			else if(mouseposx < event.screenX)
			{
				clearInterval(myInterval);
				prevSlide();
				$(".nodrag").css('pointer-events', 'none');
	   		 	$('.nodrag').click(function(event) {
			      event.preventDefault(); 
			    });
			}
		});

		$("#carrucon").bind('touchstart', function(event) {
			xPrev = event.touches[0].clientX;
		});
		$("#carrucon").bind('touchend', function(event) {
			if(xPrev > event.changedTouches[0].clientX) 
			{ 
				clearInterval(myInterval);
	   		 	nextSlide();
	   		 	$(".nodrag").css('pointer-events', 'none');
	   		 	$('.nodrag').click(function(event) {
			      event.preventDefault(); 
			    });
			}
			else if(xPrev < event.changedTouches[0].clientX)
			{
				clearInterval(myInterval);
			   	prevSlide();
			   	$(".nodrag").css('pointer-events', 'none');
	   		 	$('.nodrag').click(function(event) {
			      event.preventDefault(); 
			    });
			}
		});
		/////CALL TAGS IN PRODUCTS
		function showTooltip($el) {
		  const text = $el.data('in');
		  const $wrapper = $el.parent();

		  if ($wrapper.find('.img-tag-tag').length === 0) {
		    $wrapper.append('<div class="img-tag-tag"></div>');
		  }

		  const $tooltip = $wrapper.find('.img-tag-tag');
		  $tooltip.text(text).fadeIn(200);

		  const iconWidth = $el.outerWidth();
		  const iconOffset = $el.offset();
		  const tooltipWidth = $tooltip.outerWidth();
		  const windowWidth = $(window).width();

		  let left = iconOffset.left + iconWidth / 2 - tooltipWidth / 2;
		  let transform = '';

		  if (left < 0) {
		    left = 0;
		    transform = 'none';
		  }

		  if (left + tooltipWidth > windowWidth) {
		    left = windowWidth - tooltipWidth;
		    transform = 'none';
		  }

		  $tooltip.css({
		    position: 'absolute',
		    top: '-30px',
		    left: left - $wrapper.offset().left,
		    transform: transform,
		    'min-width': 'max-content',
		    'max-width': '90vw',
		    'white-space': 'nowrap',
		    'overflow': 'hidden',
		    'text-overflow': 'ellipsis',
		    'z-index': 1000,
		  });
		}

		function hideTooltip($el) {
		  $el.parent().find('.img-tag-tag').fadeOut(200);
		}

		// Hover para desktop
		$('.callme-tag').hover(
		  function () {
		    if (!('ontouchstart' in window)) {
		      showTooltip($(this));
		    }
		  },
		  function () {
		    if (!('ontouchstart' in window)) {
		      hideTooltip($(this));
		    }
		  }
		);

		// Click para móviles
		$('.callme-tag').on('click', function (e) {
		  e.stopPropagation();
		  const $tooltip = $(this).parent().find('.img-tag-tag');

		  if ($tooltip.is(':visible')) {
		    hideTooltip($(this));
		  } else {
		    showTooltip($(this));
		  }
		});

		// Ocultar tooltip al tocar fuera en móvil
		$(document).on('click touchstart', function () {
		  $('.img-tag-tag').fadeOut(200);
		});
		/////CHANGE TABS OF PRODUCTS
		$('.TN-tab-element').click(function () {
			$(".TN-tab-element").each(function() {
				$(this).removeClass("active");
			});
			$(this).addClass("active");
			const dataget = $(this).data('in');
			$(".container-product-display").each(function() {
				$(this).hide();
			});
			$(".NT-product-description").each(function() {
				$(this).hide();
			});
			$("."+dataget).show();
		});

		///CARD SAME HEIGHT
		window.onload = function () {
			correct_card_height("product-promotional-title", 0);
			correct_card_height("carousel-promotional-title", 0);
			$(".n1").show();
			$(".n1").addClass("active");
			$('[data-in="n1"]').addClass("active");
			$(".n2").hide();
			$(".n2").removeClass("active");
			$('[data-in="n2"]').removeClass("active");
			$(".n3").hide();
			$(".n3").removeClass("active");
			$('[data-in="n3"]').removeClass("active");
			$(".n4").hide();
			$(".n4").removeClass("active");
			$('[data-in="n4"]').removeClass("active");
		};
	  	function correct_card_height(thecard , extra) 
		{	
			var omegaheight = 0;
			$('.'+thecard).each(function()
			{
				if($(this).height() + extra > omegaheight)
				{
					omegaheight = $(this).height() + extra;
				}
			});
			$('.'+thecard).each(function()
			{
				$(this).css("min-height",omegaheight + "px");
			});
		}

		////

		// Click para móviles
		$(".return_top_arrow").click(function() {
			$('html,body').animate({
				scrollTop: $(".wellnesssection_top").offset().top + 120},
				'slow');
		});

		$(window).on('scroll', function() {
			if ($(window).width() < 580) {
				var screenHeight = $(window).height();
			    var target = $('.wellnesssection');
			    var floating = $('.return_top_arrow');
			    var scrollTop = $(window).scrollTop();
			    var targetTop = target.offset().top + screenHeight;
			    var targetBottom = targetTop + target.outerHeight() - screenHeight - screenHeight/2;

			    if (scrollTop > targetTop && scrollTop < targetBottom) {
			        floating.fadeIn();
			    } else {
			        floating.fadeOut();
			    }
			}
			else
			{
				$(".return_top_arrow").hide();
			}
		});
</script>

{% elseif section_select == 'main_product' %}

	{#  **** Main product ****  #}
	{% if show_help or (show_component_help and not has_products) %}
		{% snipplet 'defaults/home/main_product_help.tpl' %}
	{% else %}
		{% include 'snipplets/home/home-main-product.tpl' %}
	{% endif %}

{% elseif section_select == 'video' %}

	{#  **** Video embed ****  #}
	{% if show_help or (show_component_help and not has_video) %}
		{% snipplet 'defaults/home/video_help.tpl' %}
	{% else %}
		{% include 'snipplets/home/home-video.tpl' %}
	{% endif %}

{% elseif section_select == 'instafeed' %}

	{#  **** Instafeed ****  #}
	{% if show_help or (show_component_help and not has_instafeed) %}
		{% snipplet 'defaults/home/instafeed_help.tpl' %}
	{% else %}
		{% include 'snipplets/home/home-instafeed.tpl' %}
	{% endif %}

{% elseif section_select == 'promotional' %}

	<div style="display:none;">
	{#  **** Promotional banners ****  #}

	{% set section_without_margins = settings.banner_promotional_without_margins ? 'section-home-color p-0' %}
	
	<section class="js-section-banner-home section-home section-banners-home position-relative overflow-none {{ section_without_margins }}" data-store="home-banner-promotional" data-transition="fade-in-up">
		{% if show_help or (show_component_help and not has_promotional_banners) %}
			{% include 'snipplets/defaults/home/banners_help.tpl' with { banner_name: 'promotional', banner_title: 'Promoción' | translate, help_text: 'Podés mostrar tus promociones desde' | translate, section_name: 'Banners promocionales' | translate }  %}
		{% else %}
			{% include 'snipplets/home/home-banners.tpl' with {'has_banner_promotional': true} %}
		{% endif %}
	</section>
	</div>

{% elseif section_select == 'news_banners' %}
	{#  **** News banners ****  #}

	{% set section_without_margins = settings.banner_news_without_margins ? 'section-home-color p-0' %}
	<div style="display:none;">
	<section class="js-section-banner-home section-home section-banners-home position-relative overflow-none {{ section_without_margins }}" data-store="home-banner-news" data-transition="fade-in-up">
		{% if show_help or (show_component_help and not has_news_banners) %}
			{% include 'snipplets/defaults/home/banners_help.tpl' with { banner_name: 'news', banner_title: 'Nuevo' | translate, help_text: 'Podés mostrar tus últimas novedades desde' | translate, section_name: 'Banners de novedades' | translate }  %}
		{% else %}
			{% include 'snipplets/home/home-banners.tpl' with {'has_banner_news': true} %}
		{% endif %}
	</section>
	</div>

{% elseif section_select == 'brands' %}

	{#  **** Brands slider ****  #}
	{% if show_help or (show_component_help and not has_brands) %}
		{% snipplet 'defaults/home/brands_help.tpl' %}
	{% else %}
		{% include 'snipplets/home/home-brands.tpl' %}
	{% endif %}

{% elseif section_select == 'testimonials' %}

	{#  **** Testimonials slider ****  #}
	{% if show_help or (show_component_help and not has_testimonials) %}
		{% snipplet 'defaults/home/testimonials_help.tpl' %}
	{% else %}
		{% include 'snipplets/home/home-testimonials.tpl' %}
	{% endif %}

{% endif %}