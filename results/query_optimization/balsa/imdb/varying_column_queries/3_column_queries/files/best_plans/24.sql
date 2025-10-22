/*+ NestLoop(title cast_info movie_keyword movie_info movie_companies)
 MergeJoin(title cast_info movie_keyword movie_info)
 MergeJoin(title cast_info movie_keyword)
 HashJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 Leading(((((title cast_info) movie_keyword) movie_info) movie_companies)) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and title.production_year<80 and title.episode_nr<17;

