/*+ MergeJoin(movie_companies title cast_info movie_keyword movie_info)
 MergeJoin(movie_companies title cast_info movie_keyword)
 MergeJoin(movie_companies title cast_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((movie_companies title) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>478 and cast_info.nr_order>0 and title.episode_nr>0;

