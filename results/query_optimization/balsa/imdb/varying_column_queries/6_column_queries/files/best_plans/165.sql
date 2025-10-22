/*+ HashJoin(movie_info movie_info_idx movie_keyword title movie_companies)
 HashJoin(movie_info_idx movie_keyword title movie_companies)
 MergeJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_info_idx (movie_keyword (title movie_companies))))) */
select count(*) from movie_info_idx,movie_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id>1 and title.phonetic_code>11464 and title.production_year>82 and title.episode_nr>0 and title.imdb_index=0;

