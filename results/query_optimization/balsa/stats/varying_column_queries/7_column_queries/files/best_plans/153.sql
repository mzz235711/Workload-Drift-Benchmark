/*+ HashJoin(ph b u pl p v)
 HashJoin(b u pl p v)
 NestLoop(u pl p v)
 MergeJoin(u pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(b)
 IndexScan(u)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(v)
 Leading((ph (b ((u (pl p)) v)))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score>=0 AND p.ViewCount>=0 AND p.CreationDate>='2010-08-03 14:26:33'::timestamp AND p.CreationDate<='2014-09-11 20:22:41'::timestamp AND ph.CreationDate>='2011-01-08 02:52:10'::timestamp AND u.Reputation<=203 AND u.Views>=0;

