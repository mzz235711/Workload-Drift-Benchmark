/*+ NestLoop(c pl p u)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(u)
 Leading(((c (pl p)) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.PostTypeId=2 AND p.CommentCount<=13 AND pl.CreationDate>='2012-03-07 00:53:27'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=4 AND u.UpVotes>=0;

