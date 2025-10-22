/*+ HashJoin(title cast_info movie_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_info movie_companies)
 HashJoin(title cast_info movie_info)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<47265 and cast_info.nr_order>2 and title.imdb_index=0 and title.episode_nr>0;

