/*+ NestLoop(movie_info_idx movie_companies title)
 NestLoop(movie_info_idx movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 Leading(((movie_info_idx movie_companies) title)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<6 AND title.phonetic_code<1964 AND movie_info_idx.info_type_id>109;

