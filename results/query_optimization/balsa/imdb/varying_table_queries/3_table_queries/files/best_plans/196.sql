/*+ HashJoin(cast_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.season_nr<1 and title.production_year<125;

