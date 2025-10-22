/*+ HashJoin(u v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.Score<=20 AND p.AnswerCount<=3 AND p.CommentCount=2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND v.BountyAmount>=0 AND u.Views<=74 AND u.UpVotes>=0;

