/*+ HashJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_keyword (title cast_info))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<46138 and title.kind_id>1 and title.episode_nr>0 and title.production_year<80 and title.phonetic_code<2713;

