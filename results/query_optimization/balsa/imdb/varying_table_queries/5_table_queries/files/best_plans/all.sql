/*+ HashJoin(title movie_info_idx movie_companies movie_info movie_keyword)
 HashJoin(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((title movie_info_idx) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<37326 and movie_info_idx.info_type_id<101 and title.production_year<122 and title.kind_id=1 and title.imdb_index=0;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 HashJoin(movie_info_idx title movie_companies movie_info)
 HashJoin(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and title.kind_id=1;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<107 and movie_companies.company_type_id>1 and cast_info.role_id<8 and title.imdb_index=0;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<24 and title.kind_id<7 and title.series_years>0 and title.imdb_index>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.season_nr>0 and title.episode_nr<44;

/*+ NestLoop(movie_info_idx title movie_companies movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=101 and title.phonetic_code>20505 and title.kind_id=7;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 HashJoin(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.season_nr=1 and title.phonetic_code<20302 and title.production_year>97;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and title.season_nr>0 and title.production_year>109 and title.imdb_index=0 and title.kind_id>1;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.season_nr=0 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>196 and title.production_year<91 and title.kind_id=7;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id=99 and title.episode_nr>0;

/*+ HashJoin(movie_info_idx cast_info title movie_info movie_companies)
 HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 Leading(((movie_info_idx (cast_info (title movie_info))) movie_companies)) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<1000 and title.kind_id<7 and title.phonetic_code>0 and title.episode_nr<213 and title.season_nr<2;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,cast_info,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and cast_info.role_id<8 and title.episode_nr<82 and title.production_year<127 and title.phonetic_code>0;

/*+ MergeJoin(movie_info_idx title movie_info cast_info movie_keyword)
 MergeJoin(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading((((movie_info_idx (title movie_info)) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and movie_info_idx.info_type_id<101 and title.phonetic_code<10826;

/*+ HashJoin(movie_info cast_info movie_companies movie_info_idx title)
 MergeJoin(cast_info movie_companies movie_info_idx title)
 MergeJoin(movie_companies movie_info_idx title)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info (cast_info (movie_companies (movie_info_idx title))))) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<16 and cast_info.role_id<8 and title.imdb_index=0;

/*+ MergeJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<18 and movie_keyword.keyword_id<16822 and title.imdb_index=0 and title.season_nr>0;

/*+ HashJoin(title cast_info movie_companies movie_info movie_keyword)
 HashJoin(title cast_info movie_companies movie_info)
 HashJoin(title cast_info movie_companies)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_companies) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_companies,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<45 and movie_companies.company_type_id>1 and movie_info.info_type_id>1 and title.episode_nr>0 and title.season_nr>0;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_companies,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id<2 and title.season_nr>0 and title.phonetic_code<14178 and title.production_year>123;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_companies)
 HashJoin(movie_info_idx title cast_info movie_info)
 HashJoin(title cast_info movie_info)
 HashJoin(title cast_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 Leading(((movie_info_idx ((title cast_info) movie_info)) movie_companies)) */
select count(*) from movie_info,movie_companies,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order<1 and title.kind_id<7 and title.episode_nr<18;

/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_info,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and title.series_years>0 and title.production_year>22 and title.kind_id>1 and title.season_nr>0;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_companies,movie_info,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and title.imdb_index>0 and title.phonetic_code<17607 and title.kind_id<7 and title.production_year>81;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 HashJoin(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.season_nr=1 and title.kind_id>1 and title.episode_nr<1112;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_keyword,cast_info,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id=1 and title.phonetic_code>21022 and title.production_year>120;

/*+ HashJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>0 and title.season_nr<5 and title.series_years>0 and title.production_year>105 and title.kind_id<7;

/*+ HashJoin(title cast_info movie_companies movie_keyword movie_info)
 HashJoin(title cast_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_companies)
 HashJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title cast_info) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=9 and title.phonetic_code>0 and title.episode_nr<5 and title.season_nr>0;

/*+ HashJoin(title movie_info_idx movie_info movie_companies cast_info)
 NestLoop(title movie_info_idx movie_info movie_companies)
 NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 Leading(((((title movie_info_idx) movie_info) movie_companies) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id=9 and movie_info.info_type_id>2 and title.series_years>1336 and title.imdb_index=0;

/*+ NestLoop(movie_info_idx title movie_info movie_companies cast_info)
 NestLoop(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((((movie_info_idx title) movie_info) movie_companies) cast_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>15 and movie_companies.company_type_id>1 and title.season_nr=0 and title.series_years>397;

/*+ HashJoin(cast_info title movie_companies movie_info movie_keyword)
 HashJoin(cast_info title movie_companies movie_info)
 NestLoop(cast_info title movie_companies)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,cast_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<24 and title.phonetic_code>0 and title.season_nr=1 and title.production_year>29;

/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<18 and movie_companies.company_type_id=2 and title.imdb_index=0 and title.phonetic_code>17782;

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

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.episode_nr<2880 and title.kind_id>1 and title.imdb_index>0 and title.season_nr=0;

/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=10 and movie_info_idx.info_type_id<101 and title.phonetic_code>0 and title.episode_nr<223;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,cast_info,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id>1 and title.production_year>114 and title.imdb_index>0;

/*+ HashJoin(cast_info movie_info_idx title movie_companies movie_keyword)
 HashJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(title movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((cast_info (movie_info_idx (title movie_companies))) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>667 and cast_info.nr_order>1 and title.kind_id=1;

/*+ MergeJoin(movie_companies title movie_info cast_info movie_keyword)
 NestLoop(movie_companies title movie_info cast_info)
 NestLoop(movie_companies title movie_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<27539 and movie_companies.company_type_id<2 and title.phonetic_code<16815 and title.season_nr=0 and title.imdb_index>6;

/*+ HashJoin(movie_info_idx title movie_info movie_keyword movie_companies)
 HashJoin(movie_info_idx title movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 Leading(((((movie_info_idx title) movie_info) movie_keyword) movie_companies)) */
select count(*) from movie_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and movie_companies.company_type_id=2 and movie_keyword.keyword_id<21233 and title.production_year>114 and title.series_years>0 and title.phonetic_code>761;

/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_info movie_companies)
 HashJoin(movie_info_idx title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading((((movie_info_idx (title movie_info)) movie_companies) movie_keyword)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.production_year<125;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_companies.company_type_id<2 and title.kind_id>1;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 HashJoin(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=2 and movie_info.info_type_id<16 and title.episode_nr>0 and title.imdb_index=0;

/*+ MergeJoin(cast_info title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword movie_info)
 MergeJoin(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_keyword) movie_info))) */
select count(*) from movie_info_idx,movie_keyword,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and title.episode_nr>0 and title.production_year<124 and title.imdb_index<2;

/*+ MergeJoin(cast_info title movie_companies movie_keyword movie_info)
 MergeJoin(cast_info title movie_companies movie_keyword)
 MergeJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 IndexScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((cast_info (title movie_companies)) movie_keyword) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and cast_info.nr_order>0 and movie_keyword.keyword_id>905 and title.season_nr>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<11 and movie_info.info_type_id>2 and movie_companies.company_type_id=2 and title.season_nr>1;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>382 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.season_nr<8;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=99 and cast_info.nr_order<60 and title.series_years>0 and title.episode_nr<7;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_companies,movie_info_idx,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and movie_keyword.keyword_id>47 and movie_info.info_type_id<17 and title.phonetic_code<2877;

/*+ HashJoin(title movie_info_idx movie_companies movie_info movie_keyword)
 HashJoin(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((title movie_info_idx) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>398 and movie_info.info_type_id>13 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx movie_info movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_info movie_companies)
 NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((((title movie_info_idx) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.season_nr<2 and title.imdb_index>0 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<16 and title.kind_id>1 and title.imdb_index=0;

/*+ MergeJoin(cast_info title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword movie_info)
 MergeJoin(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_keyword) movie_info))) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<10 and title.episode_nr>0;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<16 and title.episode_nr>0;

/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>256 and title.episode_nr>0 and title.phonetic_code>20845;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id=2 and title.production_year<126;

/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_info movie_companies)
 HashJoin(movie_info_idx title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading((((movie_info_idx (title movie_info)) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_info,movie_info_idx,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.season_nr<3;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id>1 and movie_companies.company_type_id<2 and title.kind_id=1 and title.imdb_index=0;

/*+ HashJoin(cast_info title movie_info movie_companies movie_keyword)
 HashJoin(cast_info title movie_info movie_companies)
 HashJoin(cast_info title movie_info)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>545 and cast_info.role_id=4 and movie_info.info_type_id<103 and title.production_year>117;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and title.season_nr=0 and title.kind_id=1 and title.phonetic_code<19560 and title.episode_nr<23;

/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_info)
 NestLoop(movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and cast_info.role_id=2 and movie_info.info_type_id<16 and title.imdb_index>0;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and movie_companies.company_type_id=2 and title.episode_nr>0 and title.season_nr=3;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>3 and title.series_years>0 and title.phonetic_code<18348 and title.kind_id<7 and title.production_year>78;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and title.kind_id=4 and title.production_year>119;

/*+ MergeJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 HashJoin(title movie_companies cast_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.season_nr>0;

/*+ HashJoin(movie_companies title cast_info movie_info movie_keyword)
 NestLoop(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 NestLoop(movie_companies title)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) cast_info) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id<18 and title.production_year>124 and title.imdb_index=0 and title.phonetic_code<3991 and title.kind_id>1;

/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>121 and movie_companies.company_type_id>1 and title.production_year<93 and title.kind_id>1;

/*+ HashJoin(movie_info_idx title movie_info cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_info cast_info)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<5 and title.production_year<126 and title.series_years<1400;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>1 and movie_companies.company_type_id=2 and title.series_years>0;

/*+ HashJoin(movie_info_idx cast_info title movie_companies movie_info)
 HashJoin(movie_info_idx cast_info title movie_companies)
 MergeJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((movie_info_idx (cast_info (title movie_companies))) movie_info)) */
select count(*) from movie_companies,cast_info,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order>8 and movie_info_idx.info_type_id=100 and title.phonetic_code<16820 and title.kind_id<3;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 HashJoin(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<16 and title.phonetic_code>14374 and title.episode_nr>0;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<16 and movie_companies.company_type_id<2 and title.phonetic_code<7166 and title.series_years>0 and title.season_nr=0;

/*+ MergeJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_keyword,cast_info,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.episode_nr>0 and title.imdb_index=0;

/*+ HashJoin(title movie_info_idx movie_info movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_info movie_keyword)
 NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 Leading(((((title movie_info_idx) movie_info) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and movie_info.info_type_id>16 and title.imdb_index=0 and title.episode_nr>18;

/*+ NestLoop(movie_info_idx title movie_info movie_companies cast_info)
 NestLoop(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((((movie_info_idx title) movie_info) movie_companies) cast_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=100 and cast_info.role_id>1 and title.imdb_index>0 and title.season_nr=0 and title.production_year<113;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<10 and title.episode_nr>0;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and title.phonetic_code>0 and title.season_nr<1 and title.imdb_index>0;

/*+ HashJoin(movie_info_idx title movie_info movie_keyword movie_companies)
 HashJoin(movie_info_idx title movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 Leading(((((movie_info_idx title) movie_info) movie_keyword) movie_companies)) */
select count(*) from movie_keyword,movie_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>807 and movie_info.info_type_id<16 and title.series_years>0;

/*+ HashJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>3 and movie_companies.company_type_id>1 and title.episode_nr<13 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=2 and title.series_years>0 and title.phonetic_code>11068;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 HashJoin(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and movie_info_idx.info_type_id<101 and title.production_year>106;

/*+ HashJoin(cast_info title movie_companies movie_info movie_keyword)
 HashJoin(cast_info title movie_companies movie_info)
 NestLoop(cast_info title movie_companies)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_companies) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.production_year>106 and title.kind_id<7 and title.imdb_index>0 and title.episode_nr<12;

/*+ MergeJoin(title movie_info_idx cast_info movie_keyword movie_info)
 MergeJoin(title movie_info_idx cast_info movie_keyword)
 NestLoop(title movie_info_idx cast_info)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) cast_info) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and movie_info.info_type_id<16 and title.kind_id=7 and title.phonetic_code>0;

/*+ NestLoop(title movie_companies movie_info_idx cast_info movie_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=101 and cast_info.nr_order>1 and title.season_nr=0 and title.phonetic_code<1737;

/*+ MergeJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and title.kind_id>1;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>2 and title.series_years>0 and title.imdb_index<1;

/*+ HashJoin(movie_keyword cast_info movie_info_idx title movie_companies)
 MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (cast_info ((movie_info_idx title) movie_companies)))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<26 and title.imdb_index=0;

/*+ NestLoop(movie_info_idx title movie_info cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_info cast_info)
 NestLoop(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.series_years>1236 and title.phonetic_code<221 and title.imdb_index>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.kind_id=1;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 HashJoin(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and cast_info.role_id>1 and movie_info_idx.info_type_id=99 and title.imdb_index=0 and title.season_nr>0 and title.production_year<118 and title.phonetic_code>3482;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<106 and title.production_year>70 and title.imdb_index>0;

/*+ HashJoin(title movie_info_idx movie_companies movie_info movie_keyword)
 HashJoin(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((title movie_info_idx) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_companies,movie_info,movie_info_idx,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id>1 and title.imdb_index=0 and title.phonetic_code<18117;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 HashJoin(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=99 and title.kind_id=7 and title.imdb_index=0;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 HashJoin(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.kind_id>1 and title.season_nr<6;

/*+ HashJoin(title cast_info movie_companies movie_info_idx movie_info)
 NestLoop(title cast_info movie_companies movie_info_idx)
 HashJoin(title cast_info movie_companies)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(movie_info)
 Leading(((((title cast_info) movie_companies) movie_info_idx) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<104 and cast_info.role_id=10 and movie_companies.company_type_id=2 and title.imdb_index=0;

/*+ HashJoin(cast_info title movie_info movie_companies movie_keyword)
 HashJoin(cast_info title movie_info movie_companies)
 HashJoin(cast_info title movie_info)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=2 and title.kind_id>1 and title.episode_nr>0 and title.season_nr<4 and title.imdb_index=0;

/*+ HashJoin(movie_info_idx title movie_companies movie_keyword movie_info)
 HashJoin(movie_info_idx title movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id=2 and title.kind_id>1 and title.season_nr<19;

/*+ MergeJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<75103 and title.production_year>99 and title.season_nr>0;

/*+ HashJoin(movie_info_idx title cast_info movie_keyword movie_companies)
 HashJoin(movie_info_idx title cast_info movie_keyword)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 Leading(((((movie_info_idx title) cast_info) movie_keyword) movie_companies)) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<24 and movie_companies.company_type_id<2 and title.episode_nr>0 and title.season_nr=1 and title.phonetic_code<17229;

/*+ HashJoin(movie_info_idx title movie_info movie_keyword movie_companies)
 HashJoin(movie_info_idx title movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 Leading(((((movie_info_idx title) movie_info) movie_keyword) movie_companies)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<63 and title.kind_id=3;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>0 and movie_companies.company_type_id<2 and title.phonetic_code>0 and title.production_year<123 and title.kind_id=7 and title.episode_nr<15;

/*+ MergeJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<71480 and movie_companies.company_type_id>1 and cast_info.nr_order>1 and title.season_nr=4 and title.phonetic_code<8457;

/*+ MergeJoin(cast_info title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword movie_info)
 MergeJoin(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_keyword) movie_info))) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<71744 and title.episode_nr>0;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<46728 and cast_info.nr_order>1 and title.imdb_index>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and movie_keyword.keyword_id<2629 and title.kind_id>1;

/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_info,cast_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<106 and movie_companies.company_type_id>1 and title.production_year>124;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 HashJoin(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>3 and movie_companies.company_type_id>1 and title.season_nr=0 and title.kind_id=1 and title.production_year>0 and title.phonetic_code<16649;

/*+ HashJoin(cast_info movie_info_idx title movie_info movie_keyword)
 HashJoin(cast_info movie_info_idx title movie_info)
 HashJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((cast_info (movie_info_idx (title movie_info))) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<16 and title.episode_nr>0;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 HashJoin(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.series_years>0;

/*+ HashJoin(cast_info title movie_info_idx movie_companies movie_info)
 NestLoop(cast_info title movie_info_idx movie_companies)
 NestLoop(cast_info title movie_info_idx)
 NestLoop(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((cast_info title) movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<17 and title.production_year>77;

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

/*+ HashJoin(title cast_info movie_companies movie_info_idx movie_info)
 NestLoop(title cast_info movie_companies movie_info_idx)
 HashJoin(title cast_info movie_companies)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(movie_info)
 Leading(((((title cast_info) movie_companies) movie_info_idx) movie_info)) */
select count(*) from movie_companies,cast_info,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=100 and title.phonetic_code>12252;

/*+ MergeJoin(title movie_companies movie_info_idx cast_info movie_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 MergeJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) cast_info) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<8 and title.production_year>99;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_keyword.keyword_id>137 and title.imdb_index=0;

/*+ HashJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_keyword,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order>5 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and title.season_nr=2;

/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_info)
 NestLoop(movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and cast_info.role_id=1 and title.production_year<126 and title.imdb_index>0 and title.phonetic_code>3846;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_keyword,cast_info,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<77586 and cast_info.role_id=4 and title.kind_id>1 and title.episode_nr<11 and title.season_nr=0;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<20 and title.episode_nr>0 and title.season_nr>0;

/*+ HashJoin(movie_info_idx title movie_info movie_keyword cast_info)
 HashJoin(movie_info_idx title movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(cast_info)
 Leading(((((movie_info_idx title) movie_info) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,movie_keyword,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<68250 and movie_info.info_type_id>2 and cast_info.nr_order<10 and title.season_nr>0 and title.production_year>123;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.kind_id=7 and title.episode_nr>0 and title.phonetic_code>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and cast_info.role_id=1 and title.episode_nr<39 and title.season_nr=0;

/*+ MergeJoin(cast_info title movie_companies movie_info movie_keyword)
 MergeJoin(cast_info title movie_companies movie_info)
 MergeJoin(title movie_companies movie_info)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((cast_info ((title movie_companies) movie_info)) movie_keyword)) */
select count(*) from movie_companies,movie_info,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=2 and movie_keyword.keyword_id>121 and title.season_nr>0 and title.phonetic_code<17638 and title.kind_id>4;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and title.kind_id<7 and title.season_nr<63 and title.phonetic_code>0;

/*+ HashJoin(movie_keyword cast_info movie_info_idx title movie_companies)
 MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (cast_info ((movie_info_idx title) movie_companies)))) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order>0 and title.series_years<1296;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.role_id>1 and title.imdb_index=0;

/*+ MergeJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.episode_nr>3 and title.production_year>106;

/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>2 and title.kind_id=2 and title.season_nr=0;

/*+ MergeJoin(title movie_companies cast_info movie_keyword movie_info)
 HashJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>335 and movie_companies.company_type_id=2 and title.kind_id=7;

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

/*+ HashJoin(movie_companies title movie_info cast_info movie_keyword)
 NestLoop(movie_companies title movie_info cast_info)
 NestLoop(movie_companies title movie_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<94 and movie_companies.company_type_id=2 and title.phonetic_code>679 and title.series_years>0;

/*+ MergeJoin(title movie_companies movie_info_idx cast_info movie_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 MergeJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) cast_info) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.role_id<4 and title.phonetic_code>0;

/*+ HashJoin(movie_companies title cast_info movie_info movie_keyword)
 HashJoin(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>2 and movie_info.info_type_id<98 and title.season_nr=4;

/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>56 and cast_info.role_id=1 and title.imdb_index=0 and title.season_nr>0 and title.production_year>99;

/*+ HashJoin(title cast_info movie_companies movie_keyword movie_info)
 NestLoop(title cast_info movie_companies movie_keyword)
 NestLoop(title cast_info movie_companies)
 NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title cast_info) movie_companies) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<16 and movie_keyword.keyword_id<117 and movie_companies.company_type_id<2 and title.imdb_index=0 and title.series_years>0 and title.production_year<59;

/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<37 and movie_info_idx.info_type_id>99 and title.production_year>123;

/*+ HashJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_companies.company_type_id>1 and title.phonetic_code>62 and title.episode_nr<22 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<94 and movie_companies.company_type_id>1 and title.kind_id>1;

/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<73464 and movie_info_idx.info_type_id>99 and movie_info.info_type_id<106 and title.phonetic_code>1196 and title.production_year>116 and title.kind_id=1;

/*+ HashJoin(title cast_info movie_companies movie_info movie_keyword)
 NestLoop(title cast_info movie_companies movie_info)
 NestLoop(title cast_info movie_companies)
 HashJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_companies,movie_info,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<39 and title.season_nr=2;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>0 and title.production_year>66 and title.imdb_index>0 and title.series_years>0;

/*+ HashJoin(title cast_info movie_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_info movie_companies)
 HashJoin(title cast_info movie_info)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((((title cast_info) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<44465 and title.season_nr=0 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_info cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_info cast_info)
 NestLoop(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and title.season_nr=0 and title.phonetic_code<12173 and title.kind_id=2;

/*+ HashJoin(title cast_info movie_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_info movie_companies)
 HashJoin(title cast_info movie_info)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<47265 and cast_info.nr_order>2 and title.imdb_index=0 and title.episode_nr>0;

/*+ HashJoin(movie_info_idx title movie_info cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_info cast_info)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and title.episode_nr>7 and title.production_year>124 and title.kind_id=7;

/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<85044 and title.phonetic_code>5737 and title.imdb_index>0;

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

/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=101 and title.series_years>0;

/*+ HashJoin(movie_info title cast_info movie_companies movie_keyword)
 NestLoop(movie_info title cast_info movie_companies)
 NestLoop(movie_info title cast_info)
 NestLoop(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info title) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and movie_keyword.keyword_id<14528 and cast_info.role_id>1 and title.imdb_index=1;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and title.production_year<67 and title.series_years>0 and title.phonetic_code>16973;

/*+ HashJoin(title cast_info movie_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_info movie_companies)
 HashJoin(title cast_info movie_info)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info,cast_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<10 and title.phonetic_code<16548 and title.kind_id<7 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,cast_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>229 and title.phonetic_code<6438;

/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_info)
 NestLoop(movie_info_idx title cast_info movie_companies)
 HashJoin(movie_info_idx title cast_info)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=7 and movie_info.info_type_id>2 and title.phonetic_code<16821;

/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.series_years<1397 and title.imdb_index=2 and title.production_year>68;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=2 and movie_info.info_type_id<16 and title.phonetic_code>3050;

/*+ MergeJoin(movie_keyword movie_info_idx title cast_info movie_info)
 MergeJoin(movie_keyword movie_info_idx title cast_info)
 NestLoop(movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((movie_keyword ((movie_info_idx title) cast_info)) movie_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and title.episode_nr>0;

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
select count(*) from movie_companies,movie_info_idx,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<98 and title.episode_nr>0;

/*+ HashJoin(cast_info title movie_companies movie_info movie_keyword)
 HashJoin(cast_info title movie_companies movie_info)
 HashJoin(cast_info title movie_companies)
 NestLoop(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id=2 and cast_info.nr_order<3000 and title.episode_nr<93 and title.production_year>125;

/*+ HashJoin(title cast_info movie_companies movie_info_idx movie_info)
 NestLoop(title cast_info movie_companies movie_info_idx)
 HashJoin(title cast_info movie_companies)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(movie_info)
 Leading(((((title cast_info) movie_companies) movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=99 and title.kind_id=1;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.season_nr>0 and title.production_year>91 and title.kind_id>1;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=8 and movie_info_idx.info_type_id<101 and title.phonetic_code<2401 and title.season_nr<2 and title.kind_id=7 and title.production_year<127;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.role_id=1 and title.episode_nr>2;

/*+ HashJoin(movie_info_idx title movie_companies movie_info cast_info)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(cast_info)
 Leading(((((movie_info_idx title) movie_companies) movie_info) cast_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and title.production_year>123 and title.season_nr>0;

/*+ NestLoop(movie_info_idx title movie_companies movie_info cast_info)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((movie_info_idx title) movie_companies) movie_info) cast_info)) */
select count(*) from cast_info,movie_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<105 and title.season_nr=4 and title.episode_nr>0;

/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_info_idx,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id<107 and title.kind_id>1 and title.season_nr>0 and title.episode_nr<9302 and title.series_years<627;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>1041 and movie_info_idx.info_type_id<101 and title.series_years>0;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_info,cast_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<72067 and title.season_nr=0 and title.series_years>0 and title.imdb_index=0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order>1 and title.production_year>100;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<98 and cast_info.role_id>1 and movie_companies.company_type_id=2 and title.series_years>0;

/*+ HashJoin(movie_companies title movie_info cast_info movie_keyword)
 NestLoop(movie_companies title movie_info cast_info)
 NestLoop(movie_companies title movie_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_info,cast_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and movie_keyword.keyword_id>434 and title.phonetic_code<6031 and title.season_nr>1 and title.kind_id=7 and title.production_year<95;

/*+ NestLoop(movie_info_idx title movie_companies movie_info cast_info)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((movie_info_idx title) movie_companies) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id<16 and title.imdb_index=0 and title.series_years>0;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<107 and cast_info.nr_order<22 and title.production_year>75 and title.episode_nr<99 and title.imdb_index>0;

/*+ HashJoin(movie_info_idx title cast_info movie_keyword movie_info)
 HashJoin(movie_info_idx title cast_info movie_keyword)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and cast_info.nr_order<14 and title.production_year<111;

/*+ HashJoin(cast_info title movie_info movie_companies movie_keyword)
 HashJoin(cast_info title movie_info movie_companies)
 HashJoin(cast_info title movie_info)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.imdb_index=0 and title.phonetic_code>2537 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=99 and cast_info.role_id<11 and movie_info.info_type_id<16 and movie_companies.company_type_id>1 and title.season_nr>1;

/*+ MergeJoin(cast_info title movie_info_idx movie_companies movie_info)
 MergeJoin(cast_info title movie_info_idx movie_companies)
 MergeJoin(cast_info title movie_info_idx)
 MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((cast_info title) movie_info_idx) movie_companies) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.kind_id<7 and title.series_years<1397;

/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>1 and title.imdb_index=0 and title.kind_id=1 and title.phonetic_code>11729;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.kind_id=7 and title.episode_nr>0 and title.imdb_index=0;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_info,cast_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=2 and title.season_nr<21 and title.production_year<125 and title.kind_id<7 and title.series_years>0;

/*+ NestLoop(movie_info_idx title movie_info movie_companies cast_info)
 NestLoop(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((((movie_info_idx title) movie_info) movie_companies) cast_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and title.production_year>75 and title.phonetic_code<8599 and title.season_nr=12;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_companies,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id>2 and title.imdb_index>0 and title.phonetic_code>2584;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>335 and cast_info.role_id>1 and title.episode_nr>0 and title.phonetic_code<3298;

/*+ NestLoop(movie_info_idx title movie_companies movie_info cast_info)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((movie_info_idx title) movie_companies) movie_info) cast_info)) */
select count(*) from cast_info,movie_companies,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id<10 and movie_info_idx.info_type_id=99 and title.phonetic_code<10429 and title.season_nr=0 and title.imdb_index>0 and title.series_years>0;

/*+ MergeJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_info,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and movie_keyword.keyword_id>55 and title.season_nr>0 and title.imdb_index=0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and title.kind_id=7;

/*+ HashJoin(cast_info title movie_info movie_companies movie_keyword)
 HashJoin(cast_info title movie_info movie_companies)
 HashJoin(cast_info title movie_info)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info,movie_companies,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and title.kind_id<7 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.season_nr>0 and title.kind_id=7 and title.phonetic_code<20982;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>2 and movie_info.info_type_id>2 and movie_info_idx.info_type_id<101 and title.phonetic_code>3606 and title.imdb_index=0 and title.series_years>0 and title.production_year<127;

/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=1 and movie_info_idx.info_type_id=100 and title.season_nr=0 and title.production_year<74;

/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=1 and movie_info.info_type_id<16 and movie_keyword.keyword_id<16264 and title.phonetic_code>6934 and title.production_year>124;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and cast_info.nr_order<19 and title.episode_nr<5 and title.production_year>124 and title.phonetic_code<7359 and title.season_nr>6;

/*+ HashJoin(movie_companies title cast_info movie_info movie_keyword)
 HashJoin(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id<2 and cast_info.nr_order>1 and title.season_nr=2;

/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>335 and movie_companies.company_type_id>1 and title.phonetic_code<3157 and title.season_nr=0 and title.production_year<117;

/*+ HashJoin(movie_info movie_info_idx title movie_companies cast_info)
 HashJoin(movie_info_idx title movie_companies cast_info)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (((movie_info_idx title) movie_companies) cast_info))) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<74 and movie_companies.company_type_id<2 and title.production_year>118;

/*+ HashJoin(movie_info_idx title movie_info cast_info movie_companies)
 NestLoop(movie_info_idx title movie_info cast_info)
 NestLoop(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_companies)
 Leading(((((movie_info_idx title) movie_info) cast_info) movie_companies)) */
select count(*) from movie_info,movie_info_idx,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<98 and cast_info.nr_order<4 and title.phonetic_code<5459 and title.imdb_index>0 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and movie_info.info_type_id<16 and title.season_nr=1;

/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<98 and title.production_year<122 and title.series_years>0 and title.phonetic_code<3952;

/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.production_year<27;

/*+ MergeJoin(cast_info title movie_info_idx movie_keyword movie_info)
 MergeJoin(title movie_info_idx movie_keyword movie_info)
 MergeJoin(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_keyword) movie_info))) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and title.kind_id>1 and title.phonetic_code<21988 and title.production_year>0 and title.episode_nr>0;

/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.role_id<9 and title.phonetic_code<10380 and title.episode_nr>0 and title.kind_id>1;

/*+ HashJoin(title cast_info movie_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_info movie_companies)
 HashJoin(title cast_info movie_info)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_info) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_companies,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and movie_info.info_type_id>2 and movie_keyword.keyword_id>994 and title.imdb_index>0 and title.production_year<115;

/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and title.imdb_index=0;

/*+ NestLoop(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=1 and movie_keyword.keyword_id<123018 and title.production_year<39 and title.kind_id>1;

