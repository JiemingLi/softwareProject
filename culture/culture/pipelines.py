# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
import MySQLdb
import MySQLdb.cursors
from scrapy.crawler import Settings as settings
from twisted.enterprise import adbapi


class CulturePipeline(object):


    def __init__(self):
       dbargs = dict(
           host="localhost",
           db="sm",
           user="root",
           passwd="123456",
           charset='utf8',
           cursorclass=MySQLdb.cursors.DictCursor,
           use_unicode=True
       )
       self.dbpool = adbapi.ConnectionPool("MySQLdb", **dbargs)


    def insert_into_table(self,conn,item):
        sql = "INSERT INTO culture (title,sub_title,list_date,type,contents,href)VALUES (%s,%s,%s,%s,%s,%s)"
        conn.execute(sql, (item["title"], item["sub_title"], item["list_date"], item["type"], item["contents"], item["img"]))

    def process_item(self, item, spider):
        res = self.dbpool.runInteraction(self.insert_into_table, item)
        return item
