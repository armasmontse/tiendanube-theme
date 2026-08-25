{% embed "snipplets/page-header.tpl" %}
	{% block page_header_text %}{{ page.name }}{% endblock page_header_text %}
{% endembed %}

{# Institutional page  #}

<style>
body
{
	margin: 0px;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.user-content.pb-5
{
	flex: 1;
}

.h2.h1-huge-md 
{
	font-size: 32px;
	margin-top:40px;
	font-weight: 700;
}
</style>
<section class="user-content pb-5">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				{{ page.content }}
			</div>
		</div>
	</div>
</section>
