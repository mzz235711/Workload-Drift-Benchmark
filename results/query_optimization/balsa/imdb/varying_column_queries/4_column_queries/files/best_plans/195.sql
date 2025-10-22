/*+ HashJoin(cast_info title movie_keyword movie_companies movie_info)
 HashJoin(cast_info title movie_keyword movie_companies)
 HashJoin(cast_info title movie_keyword)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((((cast_info title) movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<18 and movie_keyword.keyword_id<16822 and title.imdb_index=0 and title.season_nr>0;

