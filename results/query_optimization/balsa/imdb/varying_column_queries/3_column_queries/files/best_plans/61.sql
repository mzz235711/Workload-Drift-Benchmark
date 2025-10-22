/*+ NestLoop(title movie_info movie_keyword cast_info)
 NestLoop(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.series_years>0 and title.episode_nr>0 and title.phonetic_code<17205;

