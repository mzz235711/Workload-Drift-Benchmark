/*+ HashJoin(cast_info movie_keyword title movie_info_idx movie_companies)
 HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 Leading(((cast_info (movie_keyword (title movie_info_idx))) movie_companies)) */
select count(*) from cast_info,movie_keyword,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>216 and title.production_year<113;

