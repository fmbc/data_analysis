from django.db import models

# Create your models here.
class WordList(models.Model):
    word = models.CharField(max_length=64, verbose_name='단어')

    def __str__(self):
        return self.word

    class Meta:
        db_table = 'randomword'

    