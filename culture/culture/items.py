# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class CultureItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass

class MsgItem(scrapy.Item):
    title = scrapy.Field()
    sub_title = scrapy.Field()
    list_date = scrapy.Field()
    type = scrapy.Field()
    contents = scrapy.Field()
    img = scrapy.Field()

