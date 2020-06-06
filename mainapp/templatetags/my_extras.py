from django import template
register = template.Library()

@register.filter(name='st')
def return_item(l):
    try:
        return str(l)
    except:
        return None

@register.filter(name='len')
def return_len(l):
    try:
        return len(l)
    except:
        return None
