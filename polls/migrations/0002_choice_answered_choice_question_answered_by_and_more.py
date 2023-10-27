# Generated by Django 4.2.6 on 2023-10-20 13:06

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ("polls", "0001_initial"),
    ]

    operations = [
        migrations.AddField(
            model_name="choice",
            name="answered_choice",
            field=models.ManyToManyField(
                related_name="choice_users", to=settings.AUTH_USER_MODEL
            ),
        ),
        migrations.AddField(
            model_name="question",
            name="answered_by",
            field=models.ManyToManyField(
                related_name="question_users", to=settings.AUTH_USER_MODEL
            ),
        ),
        migrations.AddField(
            model_name="question",
            name="author",
            field=models.ForeignKey(
                blank=True,
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                to=settings.AUTH_USER_MODEL,
            ),
        ),
    ]