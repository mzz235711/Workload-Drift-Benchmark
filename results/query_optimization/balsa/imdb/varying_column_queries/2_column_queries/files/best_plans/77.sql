/*+ HashJoin(movie_companies movie_keyword title movie_info_idx cast_info)
 HashJoin(movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info_idx)
 SeqScan(cast_info)
 Leading(((movie_companies ((movie_keyword title) movie_info_idx)) cast_info)) */
select count(*) from movie_keyword,movie_info_idx,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<75171 and title.production_year<126;

