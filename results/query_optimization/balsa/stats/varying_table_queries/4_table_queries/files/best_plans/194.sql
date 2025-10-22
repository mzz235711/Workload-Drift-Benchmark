/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount<=2845 AND p.FavoriteCount<=24 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=3963 AND u.UpVotes>=0 AND u.CreationDate<='2014-08-31 21:52:46'::timestamp;

