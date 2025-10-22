/*+ HashJoin(c pl p v ph b)
 HashJoin(c pl p v ph)
 HashJoin(c pl p v)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(b)
 Leading(((((c (pl p)) v) ph) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate<='2014-09-12 13:19:53'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=37144 AND p.AnswerCount<=27 AND ph.CreationDate<='2014-09-08 13:52:41'::timestamp AND v.BountyAmount>=0;

