#!/usr/bin/env python

import os
import pathlib
import requests
from bs4 import BeautifulSoup

class Manga:
    def __init__(
            self,
            _dir =  '/home/shared/Pictures/Manga/OnePiece',
            _url = 'https://www.shqqaa.com/manga/one-piece/',
            _lastf = '/home/shared/Pictures/Manga/OnePiece/last.txt'
            ):

        self.manga_dir = _dir
        self.manga_url = _url
        self.manga_lastf = _lastf
        self.manga_status = False

        with open(self.manga_lastf) as f:
            self._last = int(f.read())

    def initCh(self, chapter):
        epPath = pathlib.Path(self.manga_dir) / str(chapter)
        epPath.mkdir(exist_ok=True)

        print('-' * 20)
        print('----- Created folder {} succesfully -----'.format(str(chapter)))
        print('-' * 20)

        return epPath

    def downloadCh(self, chapter):
        epContent = requests.get(self.manga_url + str(chapter))
        if epContent.status_code == 200 :

            print('-' * 20)
            print('---- Downloading chapter {} ----'.format(str(chapter)))
            print('-' * 20)

            epPath = self.initCh(chapter)

            soup = BeautifulSoup(epContent.content, 'html.parser')
            epImgs = soup.find(class_='img-manga').find_all('img')
            for imgIndex, img in enumerate(epImgs) :
                imgContent = requests.get(img['src'])

                print('-' * 20)
                print('--- Downloading img {} ---'.format(str(imgIndex)))
                print('-' * 20)

                imgPath = epPath / (str(imgIndex) + '.png')
                with imgPath.open('wb') as f:
                    f.write(imgContent.content)
        else :
            self.manga_status = True

        print(manga_status, " : ", manga_lastf)

    def downloadStart(self):
        while not self.manga_status:
            self.downloadCh(chapter=self._last)
            self._last += 1

        lastPath = pathlib.Path(self.manga_lastf)
        with lastPath.open('w') as f :
            f.write(str(self._last))


if __name__ == '__main__' :
    m = Manga()
    print('Starting Download')
    m.downloadStart()
