/*+ HashJoin(cast_info movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx (movie_companies title))))) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id<2 and title.phonetic_code<6856 and title.production_year<43;

