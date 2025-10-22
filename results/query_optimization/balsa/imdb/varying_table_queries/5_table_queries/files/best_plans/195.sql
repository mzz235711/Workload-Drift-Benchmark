/*+ HashJoin(title movie_info movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info movie_info_idx movie_companies)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>335 and movie_info.info_type_id>1 and title.phonetic_code>6486;

