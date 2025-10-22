/*+ HashJoin(b u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(b)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((b (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=3 AND pl.CreationDate<='2014-08-25 13:40:39'::timestamp AND p.CommentCount<=11 AND u.UpVotes>=0;

