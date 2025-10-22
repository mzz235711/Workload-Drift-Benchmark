/*+ HashJoin(title movie_info_idx movie_info movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_info movie_companies)
 HashJoin(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info_idx) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.phonetic_code<10327 and title.episode_nr<5;

