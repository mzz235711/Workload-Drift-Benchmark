/*+ HashJoin(v pl c p u b)
 HashJoin(v pl c p u)
 HashJoin(pl c p u)
 HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((v (pl (c (p u)))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-12 13:37:53'::timestamp AND p.Score>=-2 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-05 04:58:19'::timestamp AND u.CreationDate<='2014-09-09 21:12:44'::timestamp;

