/*+ MergeJoin(c b pl u p v)
 HashJoin(b pl u p v)
 NestLoop(pl u p v)
 MergeJoin(pl u p)
 HashJoin(u p)
 IndexScan(c)
 SeqScan(b)
 IndexScan(pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 Leading((c (b ((pl (u p)) v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=10 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Reputation=11 AND u.CreationDate>='2010-07-19 19:25:59'::timestamp;

