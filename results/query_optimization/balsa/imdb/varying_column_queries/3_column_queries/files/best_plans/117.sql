/*+ MergeJoin(cast_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((cast_info ((title movie_companies) movie_keyword))) */
select count(*) from movie_keyword,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>165 and cast_info.nr_order>3 and title.episode_nr>0;

