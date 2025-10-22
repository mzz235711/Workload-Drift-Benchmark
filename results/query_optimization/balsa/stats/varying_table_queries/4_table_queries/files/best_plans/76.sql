/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 NestLoop(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-08 18:27:45'::timestamp AND p.CreationDate<='2014-08-20 08:36:08'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-07-19 21:29:03'::timestamp AND u.CreationDate<='2014-07-24 18:11:21'::timestamp;

