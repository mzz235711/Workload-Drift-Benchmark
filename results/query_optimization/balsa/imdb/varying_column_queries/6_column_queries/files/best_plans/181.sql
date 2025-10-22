/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>4 and movie_keyword.keyword_id<10237 and title.episode_nr>0 and title.phonetic_code<17215 and title.kind_id>1 and title.series_years>0;

