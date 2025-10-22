/*+ MergeJoin(movie_companies title cast_info movie_keyword movie_info)
 HashJoin(movie_companies title cast_info movie_keyword)
 MergeJoin(movie_companies title cast_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 IndexScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((movie_companies title) cast_info) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.nr_order<100 and movie_info.info_type_id>16 and title.imdb_index>0;

