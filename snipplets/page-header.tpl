{# /*============================================================================
  #Page header
==============================================================================*/

#Properties

#Title

#Breadcrumbs

#}

{% set padding = padding ?? true %}
{% set container = container ?? true %}
{% set page_header_title_default_classes = template == 'product' ? 'h1-md' : 'h1-huge-md' %}

{% if container %}
	<div class="container">
{% endif %}
			<section class="page-header 
				{% if padding %}
					py-4
				{% endif %} 
				{{ page_header_class }}" data-store="page-title">
				{% include 'snipplets/breadcrumbs.tpl' %}
				
				{% if page.name == 'alfa PXP ROYALE' %}
					{% include 'snipplets/pages/royale.tpl' %}
				{% elseif page.name == 'alfa PXP FORTE' %}
					{% include 'snipplets/pages/forte.tpl' %}
				{% elseif page.name == 'alfa PXP EXTREME' %}
					{% include 'snipplets/pages/extreme.tpl' %}
				{% elseif page.name == 'alfa YAKUNAAH' %}
					{% include 'snipplets/pages/yakunaah.tpl' %}
				{% elseif page.name == 'alfa HFI' %}
					{% include 'snipplets/pages/hfi.tpl' %}
				{% elseif page.name == 'alfa RXP' %}
					{% include 'snipplets/pages/rxp.tpl' %}
				{% elseif page.name == 'alfa DHA' %}
					{% include 'snipplets/pages/dha.tpl' %}
				{% elseif page.name == 'alfa ENERGY' %}
					{% include 'snipplets/pages/energy.tpl' %}
				{% elseif page.name == 'alfa B-12' %}
					{% include 'snipplets/pages/b12.tpl' %}
				{% elseif page.name == 'alfa CAFE NUTRA Signature Blend' %}
					{% include 'snipplets/pages/cafe.tpl' %}
				{% elseif page.name == 'UNDEW Facial Serum' %}
					{% include 'snipplets/pages/serum.tpl' %}
				{% elseif page.name == 'UNDEW Peptide Toner' %}
					{% include 'snipplets/pages/toner.tpl' %}
				{% elseif page.name == 'UNDEW Facial Cleanser' %}
					{% include 'snipplets/pages/cleanser.tpl' %}
				{% else %}
					<h1 class="h2 {{ page_header_title_default_classes }} {{ page_header_title_class }}"
						{% if template == "product" %}
							data-store="product-name-{{ product.id }}"
						{% endif %}>
						{% block page_header_text %}
						{% endblock %}
					</h1>
				{% endif %}
			</section>

{% if container %}
	</div>
{% endif %}