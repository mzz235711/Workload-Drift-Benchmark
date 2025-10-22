/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.imdb_index>0 and title.phonetic_code<19874;

