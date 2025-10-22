/*+ HashJoin(cast_info movie_info_idx title movie_companies movie_keyword)
 HashJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(title movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((cast_info (movie_info_idx (title movie_companies))) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>667 and cast_info.nr_order>1 and title.kind_id=1;

