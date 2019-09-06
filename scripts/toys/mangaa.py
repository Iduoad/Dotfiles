import pathlib

import requests
from bs4 import BeautifulSoup

MANGA_URL = 'https://www.shqqaa.com/manga/shingeki-no-kyojin/'
MANGA_DIR = '/home/guru/Pictures/Manga/AOT'
CHAPTERS = range(108,119)

for chapter in CHAPTERS:
    chapter_url = MANGA_URL + str(chapter)
    try:
        response = requests.get(chapter_url)

        soup = BeautifulSoup(response.text, 'html.parser')
        imgs_tags = soup.find('div', 'img-manga').find_all('img')

        if not imgs_tags:
            continue

        chapter_path = pathlib.Path(MANGA_DIR) / str(chapter)
        chapter_path.mkdir(exist_ok=True)
        for index, img_tag in enumerate(imgs_tags):
            img_url = img_tag['src']
            try:
                img = requests.get(img_url).content
                print(img_url)

                with open(chapter_path / (str(index) + '.jpg'), 'wb') as fp:
                    fp.write(img)
                print(chapter_path / (str(index) + '.jpg'))
            except:
                print(str(e))
    except:
        print(str(ee))



