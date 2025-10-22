/*+ HashJoin(ph v b pl p c)
 MergeJoin(v b pl p c)
 HashJoin(b pl p c)
 HashJoin(pl p c)
 HashJoin(p c)
 SeqScan(ph)
 IndexScan(v)
 SeqScan(b)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(c)
 Leading((ph (v (b (pl (p c)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.PostTypeId=1 AND p.Score=2 AND p.CommentCount>=0 AND ph.CreationDate>='2011-02-03 18:14:11'::timestamp AND ph.CreationDate<='2014-08-23 14:21:04'::timestamp;

