/*+ NestLoop(u p pl v)
 HashJoin(u p pl)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(v)
 Leading((((u p) pl) v)) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.Score=0 AND p.CommentCount>=0 AND p.CommentCount<=8 AND p.FavoriteCount>=0 AND u.UpVotes<=67;

