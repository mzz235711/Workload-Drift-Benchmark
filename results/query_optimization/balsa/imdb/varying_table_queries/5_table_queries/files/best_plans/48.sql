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
select count(*) from movie_keyword,movie_companies,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code<14397 and title.kind_id>1 and title.production_year>68;

