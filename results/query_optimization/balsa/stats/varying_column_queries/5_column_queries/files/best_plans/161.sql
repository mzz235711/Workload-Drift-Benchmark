/*+ HashJoin(c u pl p)
 MergeJoin(u pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (u (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.CommentCount>=0 AND p.CreationDate>='2010-07-21 15:21:33'::timestamp AND u.UpVotes<=10 AND u.CreationDate>='2011-02-25 21:56:01'::timestamp;

