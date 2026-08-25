<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
    .wwa {
        background: url(https://enzactamedia.enzacta.com/prod/images/QuienesSomos.jpg) no-repeat;
        background-position-x: 0%;
        background-position-y: 0%;
        background-size: auto;
        background-size: cover;
        padding: 5% 0;
        background-position: center;
        margin-top: 0px;
    }
    .wwa_div {
        width: 65%;
        margin: 0 auto;
    }
    .wwa_div p {
        font-size: 20px;
        text-align: center;
        margin-top: 40px;
        color: black;
        line-height: 30px;
    }
    .wwa_div h2 {
        font-weight: 300;
        color: black;
    }
    h1, h2, h3, h4, h5, h6, .pt_price, .item_statistic dt, #countdown dt, .article_stats, .lh_ex_small, .clients.brands .owl-controls {
        line-height: 1em;
    }
	.h1, .h2, h1, h2 {
		margin: 0 0 17.5px;
		font-family: var(--font-stack-header);
		font-style: var(--font-style-header);
		font-weight: var(--font-weight-header);
		line-height: 1.2;
		overflow-wrap: break-word;
		word-wrap: break-word;
		font-size: calc(((var(--font-h2-desktop))/ (var(--font-size-base))) * 1em);
  		text-transform: uppercase;
  		letter-spacing: .1em;
	}
	h2, .first_letter_1 > .fl, .item_statistic dt {
		font-size: 3em;
		text-align: center;
	}
	
	.divider_type_2, .gradient_line {
		height: 3px;
	}
	.bg_gradient, .divider_type_2, .gradient_line, #qLbar {
		background: #38c97a;
	}

	#back_to_top {
		position: fixed;
		top: 86.5%;
		z-index: 5;
	}
	.icon_wrap_size_2 {
		line-height: 39px;
	}
	.icon_wrap_size_2 {
		width: 40px;
		height: 40px;
		line-height: 40px;
		font-size: 23.3px;
	}
	[class*="icon_wrap"] {
		border-width: 1px;
		border-style: solid;
		text-align: center;
	}
	.color_grey_light_4 {
		color: #cbd0d4;
	}

	[class*="icon_wrap"] i[class|="icon"] {
		display: block;
		width: inherit;
		height: inherit;
		margin: -1px 0 0 -1px;
		margin-top: -1px;
		backface-visibility: hidden;
	}
	[class*="icon_wrap"] .icon-plus, [class*="icon_wrap"] .icon-minus, [class*="icon_wrap"] [class^="icon-angle-"] {
		margin-top: -2px !important;
	}
	i[class|="icon"] {
		line-height: inherit;
	}
	h6, .fs_large {
		font-size: 1.125em;
	}
	
	.scroll-to-top {
		position: fixed;
		bottom: 20px;
		right: 20px;
		width: 40px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		background-color: #ffffff;
		border: 2px solid #000000;
		border-radius: 50%;
		z-index: 1000;
		transition: background-color 0.3s, transform 0.3s;
	}

	.scroll-to-top:hover {
		background-color: #f0f0f0;
		transform: scale(1.1);
	}

	.scroll-to-top i {
		color: #000000;
		font-size: 20px;
	}
</style>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		const scrollToTopButton = document.querySelector('.scroll-to-top');
		if (scrollToTopButton) {
			scrollToTopButton.addEventListener('click', function(e) {
				e.preventDefault();
				window.scrollTo({ top: 0, behavior: 'smooth' });
			});
		}
	});
</script>

{% set has_social_network = store.facebook or store.twitter or store.pinterest or store.instagram or store.tiktok or store.youtube %}
{% set has_footer_contact_info = (store.whatsapp or store.phone or store.email or store.address or store.blog) and settings.footer_contact_show %}          

{% set has_footer_menu = settings.footer_menu and settings.footer_menu_show %}
{% set has_footer_menu_secondary = settings.footer_menu_secondary and settings.footer_menu_secondary_show %}
{% set has_footer_about = settings.footer_about_show and (settings.footer_about_title or settings.footer_about_description) %}
{% set has_payment_logos = settings.payments %}
{% set has_shipping_logos = settings.shipping %}
{% set has_shipping_payment_logos = has_payment_logos or has_shipping_logos %}
{% set has_languages = languages | length > 1 %}	

{% set has_seal_logos = store.afip or ebit or settings.custom_seal_code or ("seal_img.jpg" | has_custom_image) %}
{% set show_help = not has_products and not has_social_network %}
<footer class="js-footer js-hide-footer-while-scrolling {% if settings.footer_colors %}footer-colors{% endif %} display-when-content-ready overflow-none" data-store="footer">
	
	
	{% if template == 'home' %}
		<!-- ENTERPRISE MESSAGE -->
		<div class="footer-message-container">
			<h2 class="footer-message-title">Redescubre tu bienestar</h2>
			<p class="footer-message-text">
				Sabemos que buscas equilibrio: sentirte bien, cuidar tu salud y disfrutar la vida al máximo. En ENZACTA, te acompañamos en ese camino con productos naturales y de calidad, pensados para nutrir tu cuerpo y potenciar tu bienestar. Porque mereces cuidarte sin complicaciones.
				<br><br>
				Hoy más que nunca, elegimos lo que nos hace bien. Por ello, seguiremos evolucionando para traerte lo mejor, para que vivas con más energía y disfrutes de una salud... rebuilt.
			</p>
		</div>

		<a href="#top" class="scroll-to-top">
			<i class="fas fa-arrow-up"></i>
		</a>
	{% endif %}

	{% if template != 'password' %}
		{% if settings.news_show %}
			{% include 'snipplets/newsletter.tpl' %}
		{% endif %}
	{% endif %}

	<!--FOOTER-->
	<div class="first-footer-container">
		<div class="first-footer-inner-container containerflex">
			<div class="block05">
				<h2 class="footer-title-text">Contactános</h2>
				<a class="footer-normal-text" href="tel:+525510878561" target="_blank">(55) 1087-8561</a>
				<br>
				<a class="footer-normal-text" href="mailto:mxshopenzacta@enzacta.net">mxshopenzacta@enzacta.net</a>
				<ul class="social-container-footer">
					<li>
						<a href="https://www.instagram.com/enzactalasp/">
						<svg class="social-icon-footer" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 100 100">
						  <path class="social-icon-color" d="M50,12.1c12.2,0,13.7,0,18.5.3,4.5.2,6.9,1,8.5,1.6,2.1.8,3.7,1.8,5.3,3.4,1.6,1.6,2.6,3.1,3.4,5.3.6,1.6,1.4,4,1.6,8.5.2,4.8.3,6.3.3,18.5s0,13.7-.3,18.5c-.2,4.5-1,6.9-1.6,8.5-.8,2.1-1.8,3.7-3.4,5.3-1.6,1.6-3.1,2.6-5.3,3.4-1.6.6-4,1.4-8.5,1.6-4.8.2-6.3.3-18.5.3s-13.7,0-18.5-.3c-4.5-.2-6.9-1-8.5-1.6-2.1-.8-3.7-1.8-5.3-3.4-1.6-1.6-2.6-3.1-3.4-5.3-.6-1.6-1.4-4-1.6-8.5-.2-4.8-.3-6.3-.3-18.5s0-13.7.3-18.5c.2-4.5,1-6.9,1.6-8.5.8-2.1,1.8-3.7,3.4-5.3s3.1-2.6,5.3-3.4c1.6-.6,4-1.4,8.5-1.6,4.8-.2,6.3-.3,18.5-.3M50,3.9c-12.5,0-14,0-18.9.3-4.9.2-8.2,1-11.1,2.1-3,1.2-5.6,2.7-8.1,5.3-2.5,2.5-4.1,5.1-5.3,8.1-1.1,2.9-1.9,6.3-2.1,11.1-.2,4.9-.3,6.5-.3,18.9s0,14,.3,18.9c.2,4.9,1,8.2,2.1,11.1,1.2,3,2.7,5.6,5.3,8.1,2.5,2.5,5.1,4.1,8.1,5.3,2.9,1.1,6.3,1.9,11.1,2.1,4.9.2,6.5.3,18.9.3s14,0,18.9-.3c4.9-.2,8.2-1,11.1-2.1,3-1.2,5.6-2.7,8.1-5.3,2.5-2.5,4.1-5.1,5.3-8.1,1.1-2.9,1.9-6.3,2.1-11.1.2-4.9.3-6.5.3-18.9s0-14-.3-18.9c-.2-4.9-1-8.2-2.1-11.1-1.2-3-2.7-5.6-5.3-8.1-2.5-2.5-5.1-4.1-8.1-5.3-2.9-1.1-6.3-1.9-11.1-2.1-4.9-.2-6.5-.3-18.9-.3h0Z"/>
						  <path class="social-icon-color" d="M50,26.2c-13,0-23.5,10.5-23.5,23.5s10.5,23.5,23.5,23.5,23.5-10.5,23.5-23.5-10.5-23.5-23.5-23.5ZM50,65c-8.4,0-15.3-6.8-15.3-15.3s6.8-15.3,15.3-15.3,15.3,6.8,15.3,15.3-6.8,15.3-15.3,15.3Z"/>
						  <circle class="social-icon-color" cx="74.5" cy="25.2" r="5.5"/>
						</svg>
						</a>
					</li>
					<li>
						<a href="https://www.facebook.com/enzactalatinoamericayespana">
						<svg class="social-icon-footer" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 100 100">
						  <path class="social-icon-color" d="M50,3.8C24.6,3.8,4.1,24.4,4.1,49.7s16.8,41.9,38.7,45.3v-32h-11.6v-13.3h0c0-.1,11.5-.1,11.5-.1v-10c0-5.8,1.7-10.2,4.8-13.3,3-3,7.4-4.6,12.6-4.6s2.7,0,4,.2c4.5.1,5.8.5,6.1.7.1,0,.2,0,.2,0v11.3h0c0,0-5.8,0-5.8,0-2.1,0-3.7.5-4.8,1.3-1.9,1.4-2.6,3.6-2.6,5.8v8.6h12.7l-2,13.2h0,0c0,.1,0,0,0,0h0v.2h-10.5v31.8c0,0-.1,0-.2,0v.2c21.9-3.4,38.7-22.4,38.7-45.3h.1c0-25.4-20.5-46-45.9-46Z"/>
						</svg>
						</a>
					</li>
				</ul>
			</div>
			<div class="block05">
				<div>
					<h2 class="footer-title-text">Métodos de Pago</h2>
					<ul class="social-container-footer">
						<li>
							<img class="payment-image-icon" src="https://enzactamedia.enzacta.com/shopenzacta/img/i-VISA0.png">
						</li>
						<li>
							<img class="payment-image-icon" src="https://enzactamedia.enzacta.com/shopenzacta/img/i-VISAdebito0.png">
						</li>
						<li>
							<img class="payment-image-icon" src="https://enzactamedia.enzacta.com/shopenzacta/img/i-MasterCard0.png">
						</li>
						<li>
							<img class="payment-image-icon" src="https://enzactamedia.enzacta.com/shopenzacta/img/i-maestro0.png">
						</li>
						<li>
							<img class="payment-image-icon" src="https://enzactamedia.enzacta.com/shopenzacta/img/i-AmEx0.png">
						</li>
						<li>
							<img class="payment-image-icon" src="https://enzactamedia.enzacta.com/shopenzacta/img/i-OXXO0.png">
						</li>
						<li>
							<img class="payment-image-icon" src="https://enzactamedia.enzacta.com/shopenzacta/img/i-PayPal0.png">
						</li>
						<li>
							<img class="payment-image-icon" src="https://enzactamedia.enzacta.com/shopenzacta/img/i-MercadoPago0.png">
						</li>
						<li>
							<img class="payment-image-icon" src="https://enzactamedia.enzacta.com/shopenzacta/img/i-Transfer0.png">
						</li>
					</ul>
				</div>
				<div>
					<h2 class="footer-title-text" style="margin-top: 20px;">Políticas y Términos</h2>
					<div class="containerflex" style="gap:10px;">
						<div class="block03">
							<a class="politicas-text-link" href="https://mx.shopenzacta.com/cambios-y-devoluciones">Cambios y devoluciones</a>
						</div>
						<div class="block03">
							<a class="politicas-text-link" href="https://mx.shopenzacta.com/solicitud-de-facturas">Solicitud de facturas</a>
						</div>
						<div class="block03">
							<a class="politicas-text-link" href="https://mx.shopenzacta.com/estado-del-pedido">Estado del pedido</a>
						</div>
						<div class="block03">
							<a class="politicas-text-link" href="https://mx.shopenzacta.com/metodo-y-tarifas">Método y tarifas de envío</a>
						</div>
						<div class="block03">
							<a class="politicas-text-link" href="https://mx.shopenzacta.com/politicas-de-envio">Políticas de envío</a>
						</div>
						<div class="block03">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="second-footer-container">
		<div class="second-footer-inner-container">
			<div class="containerflex">
				<div class="block08">
					<p class="footer-title-text-second">
						Copyright ENZACTA - 2025. Todos los derechos reservados.<br>
						<span class="footer-normal-text-second">
							ENZACTA S. de R. L. de C. V. © 2024 MX.shopENZACTA.com Insurgentes Sur No. 885, Piso Mezanine, Col. Nápoles, Alcaldía Benito Juárez, C.P. 03810, Ciudad de México.<br>WhatsApp-Zac: (55) 7231-8075
						</span>
					</p>
				</div>
				<div class="block03" style="display: flex;align-items: center;justify-content: flex-end;">
					<div class="col-md-auto" style="float:right;">
						{{ new_powered_by_link }}
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>

