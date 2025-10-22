/*+ HashJoin(title cast_info movie_info_idx movie_companies movie_keyword)
 HashJoin(title cast_info movie_info_idx movie_companies)
 HashJoin(title cast_info movie_info_idx)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and cast_info.role_id=8 and title.phonetic_code<14729;

