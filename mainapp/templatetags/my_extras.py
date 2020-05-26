from django import template
register = template.Library()

@register.filter(name='st')
def return_item(l):
    try:
        return str(l)
    except:
        return None
