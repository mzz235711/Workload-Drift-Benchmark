/*+ MergeJoin(movie_info_idx movie_companies title cast_info movie_info)
 MergeJoin(movie_info_idx movie_companies title cast_info)
 NestLoop(movie_companies title cast_info)
 MergeJoin(movie_companies title)
 IndexScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((movie_info_idx ((movie_companies title) cast_info)) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and movie_companies.company_type_id<2 and title.season_nr<43 and title.phonetic_code<17184 and title.production_year>80;

