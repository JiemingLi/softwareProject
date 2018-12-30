# -*- coding: utf-8 -*-
import scrapy
from bs4 import BeautifulSoup
from culture.items import MsgItem
import re
class DemoSpider(scrapy.Spider):
    name = 'demo'
    allowed_domains = ['www.gxwenhuaw.cn']
    start_urls = [
                   "http://www.gxwenhuaw.cn/comp/news/list.do?compId=news_list-15315866408246286&cid=3&pageSize=9&currentPage=1",
                   "http://www.gxwenhuaw.cn/comp/news/list.do?compId=news_list-15315879649666937&cid=6&pageSize=9&currentPage=1",
                   "http://www.gxwenhuaw.cn/comp/news/list.do?compId=news_list-15320851496424551&cid=4&pageSize=5&currentPage=1"
                  ]

    mapping = {"9" : "#c_news_list-15315866408246286-"}
    # http://www.gxwenhuaw.cn/comp/news/list.do?compId=news_list-15315866408246286&cid=3&pageSize=9&currentPage=2
    # http://www.gxwenhuaw.cn/comp/news/list.do?compId=news_list-15320851496424551&cid=4&pageSize=5&currentPage=1
    # "http://www.gxwenhuaw.cn/comp/news/list.do?compId=news_list-15315879649666937&cid=6&pageSize=9&currentPage=1"
    def parse(self, response):
        url = str(response.url)
        type = url.split('&')[-3].split("=")[-1]
        html = response.body.decode("utf-8")
        soup = BeautifulSoup(html,'lxml')
        # 知道有多少页
        if type == "3":
            print("传统文化")
            pageNum = int(soup.select(".e_pagebox div.pageNum")[-1].text)
            for i in range(1,pageNum+1):
                nextUrl = url[0:-1]+str(i)
                yield scrapy.Request(nextUrl,callback=self.parseDetail,dont_filter=True)
        elif type == "4":
            print("时尚文化")
            pageNum = int(soup.select(".e_pagebox div.pageNum")[-1].text)
            for i in range(1, pageNum + 1):
                nextUrl = url[0:-1] + str(i)
                yield scrapy.Request(nextUrl,callback=self.parseFastion,dont_filter=True)
        elif type == "6":
            print("当代文化")
            pageNum = int(soup.select(".e_pagebox div.pageNum")[-1].text)
            for i in range(1, pageNum + 1):
                nextUrl = url[0:-1] + str(i)
                yield scrapy.Request(nextUrl, callback=self.parseModel, dont_filter=True)


    # 解析当代文化
    def parseModel(self,response):
        url = response.url
        types = url.split('&')[-3].split("=")[-1]
        html = response.body.decode("utf-8")
        soup = BeautifulSoup(html, 'lxml')
        items = soup.select(".nw-news.clearfix a")
        for each in items:
            link = "http://"+self.allowed_domains[0]+each.get("href")
            title = each.select(".ti")[0].text.strip()
            sub_title = each.select(".tx")[0].text.strip()
            upTime = each.select(".date")[0].text.strip()
            suffix = each.select(".pic .js_thumb")[0].get("lazy-src")
            if suffix == "":
                img = "http://www.gxwenhuaw.cn/public/img/no-img.svg"
            else:
                img = "http://www.gxwenhuaw.cn" + suffix
            item = MsgItem()
            item["title"] = title
            item["list_date"] = upTime
            item["sub_title"] = sub_title
            item["type"] = types
            item["img"] = img
            yield scrapy.Request(link, callback=self.parseContents, meta={"item": item}, dont_filter=True)




    # 解析时尚文化
    def parseFastion(self,response):
        url = response.url
        html = response.body.decode("utf-8")
        soup = BeautifulSoup(html,'lxml')
        items = soup.select("#div_news li .item")
        types = url.split('&')[-3].split("=")[-1]
        for each in items:
            title = each.select(".t")[0].text.strip()
            upTime = each.select(".ntime")[0].text.strip()
            link = ("http://"+self.allowed_domains[0]+each.select("a")[0].get("href")).strip()
            suffix = each.select(".js_thumb")[0].get("lazy-src").split(".")[-3] + "."+each.select(".js_thumb")[0].get("lazy-src").split(".")[-1]
            img = ("http://www.gxwenhuaw.cn" + suffix)
            item = MsgItem()
            item["title"] = title
            item["list_date"] = upTime
            item["type"] = types
            item["sub_title"] = title
            item["img"] = img
            yield scrapy.Request(link, callback=self.parseContents, meta={"item": item}, dont_filter=True)


    # 解析传统文化
    def parseDetail(self,response):
        url = str(response.url)
        type = url.split('&')[-3].split("=")[-1]
        html = response.body.decode("utf-8")
        soup = BeautifulSoup(html, 'lxml')
        res = soup.select(".spbq.p_articles{ a")

        for each in res:
            try:
                item = MsgItem()
                title = each.select("h2")[0].string.strip()
                sub_title = each.select("span")[0].string.strip()
                list_date = each.select(".listdate")[0].string.strip()
                img = "http://www.gxwenhuaw.cn" + each.select(".js_thumb")[0].get("lazy-src")
                link = "http://" + self.allowed_domains[0] + each.get("href")
                item["title"] = title
                item["sub_title"] = sub_title
                item["list_date"] = list_date
                item['type'] = type
                item["img"] = img
                yield scrapy.Request(link, callback=self.parseContents,
                                     meta={"item": item}, dont_filter=True)
                # yield scrapy.Request(link, callback=self.parseContents, meta={"title": title,"sub_title":sub_title,"list_date":list_date,"type":type},dont_filter=True)
                # yield item
            except  IndexError as e:
                continue


    def parseContents(self,response):
        # title  = response.meta["title"]
        # sub_title = response.meta["sub_title"]
        # list_date = response.meta["list_date"]
        # type = response.meta["type"]
        # item = MsgItem()
        aitem = response.meta["item"]
        html = response.body.decode("utf-8")
        soup = BeautifulSoup(html,'lxml')

        res1 = str(soup.select(".js_infoDetail_content div")[0])

        # print(res)

        pattern = r'/re.*?\..*?g'

        p = re.compile(pattern)

        res = set(p.findall(res1))


        # print(res)
        new = ""
        for each in res:
            # new = re.sub(pattern,"http://www.gxwenhuaw.cn"+each,str1)
            if "http" not in each:
                new = res1.replace(each, "http://www.gxwenhuaw.cn" + each)
                res1 = new
        if new == "":
            new  = res1
        # print(new)
        # for each in res:
        #     try:
        #          contents = contents + each.text.strip()
        #     except TypeError as e:
        #         pass
        # item["contents"] = contents
        # item["title"] = title
        # item["sub_title"] = sub_title
        # item["list_date"] = list_date
        # item['type'] = type
        aitem["contents"] = new
        yield aitem
# http://www.gxwenhuaw.cn/news/186.html