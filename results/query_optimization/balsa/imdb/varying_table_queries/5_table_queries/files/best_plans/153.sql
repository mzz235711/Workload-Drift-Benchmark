/*+ MergeJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 HashJoin(title movie_companies cast_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.season_nr>0;

