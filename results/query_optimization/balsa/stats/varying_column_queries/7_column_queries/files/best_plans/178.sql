/*+ HashJoin(v u p pl)
 MergeJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score>=0 AND p.Score<=18 AND p.ViewCount>=0 AND p.CommentCount<=24 AND p.FavoriteCount=0 AND u.Reputation<=373 AND u.DownVotes<=1;

