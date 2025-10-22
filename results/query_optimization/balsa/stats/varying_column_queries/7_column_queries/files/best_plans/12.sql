/*+ HashJoin(c pl p ph v b)
 NestLoop(c pl p ph v)
 HashJoin(c pl p ph)
 HashJoin(pl p ph)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(ph)
 IndexScan(v)
 SeqScan(b)
 Leading((((c ((pl p) ph)) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.ViewCount<=37011 AND p.CreationDate>='2010-09-03 09:41:58'::timestamp AND p.CreationDate<='2014-08-26 02:08:47'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-07-15 19:49:54'::timestamp AND ph.CreationDate<='2014-07-27 16:24:51'::timestamp AND v.VoteTypeId=2;

