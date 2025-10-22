/*+ HashJoin(c pl p v ph b)
 HashJoin(c pl p v ph)
 HashJoin(c pl p v)
 MergeJoin(pl p v)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 IndexScan(ph)
 SeqScan(b)
 Leading((((c ((pl p) v)) ph) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-07-20 15:30:58'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=15 AND v.VoteTypeId=2 AND b.Date>='2010-07-26 20:08:42'::timestamp;

