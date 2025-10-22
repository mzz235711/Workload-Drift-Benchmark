/*+ HashJoin(cast_info movie_keyword title movie_info_idx movie_companies)
 HashJoin(movie_keyword title movie_info_idx movie_companies)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_keyword (title movie_info_idx)) movie_companies))) */
select count(*) from movie_keyword,cast_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=1 and movie_info_idx.info_type_id<101 and title.phonetic_code<3615 and title.season_nr=0;

