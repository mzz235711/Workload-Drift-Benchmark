/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<98 and title.phonetic_code>0 and title.season_nr<15 and title.series_years>0;

