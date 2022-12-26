from django.shortcuts import render
from django.template import loader
from .models import WordList

# 랜덤
def rwordpage(request):
    return render(request, 'rwordpage.html')

#글 가져오기 

def getrandomword(request):
    template=loader.get_template('rwordpage.html')
    if request.GET.get('2')== '2':
        console.log('2clicked')
        rword = WordList.objects.values('word').order_by('?')[:2]
    elif request.GET.get('3')== '3':
        rword = WordList.objects.values('word').order_by('?')[:3]
    elif request.GET.get('4')== '4':
        rword = WordList.objects.values('word').order_by('?')[:4]
    else:
        rword = "error"
    return HttpResponse(template.render(rword))

# def getrandomword(request):
#     if request.GET.get('2')== '2':
#         console.log('2clicked')
#         rword = WordList.objects.values('word').order_by('?')[:2]
#     elif request.GET.get('3')== '3':
#         rword = WordList.objects.values('word').order_by('?')[:3]
#     elif request.GET.get('4')== '4':
#         rword = WordList.objects.values('word').order_by('?')[:4]
#     else:
#         rword = "error"
#     return render(request, './rwordpage.html', {'rword' : rword})

# def getwordlist(request):
#     cursor = connection.cursor()
#     try:
#         cursor.execute("SELECT word FROM rword ORDER BY RAND()LIMIT 2")
#     finally:
#         cursor.close()
#     rword = cursor.fetchall()
#     return render(request, './rwordpage.html', {'rword' : rword})


# def randomword(request, pk):
#     rword2 = WordList.objects.values('word').order_by('?')[:2]
#     context = {
#         'rword2' : rword2,
#     }
#     return render(request, 'rwordpage.html', context)

