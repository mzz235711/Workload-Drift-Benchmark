/*+ HashJoin(v b c pl p u)
 HashJoin(b c pl p u)
 MergeJoin(c pl p u)
 HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(v)
 SeqScan(b)
 IndexScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((v (b ((c (pl p)) u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-13 08:44:05'::timestamp AND p.CommentCount<=8 AND u.Views>=0;

