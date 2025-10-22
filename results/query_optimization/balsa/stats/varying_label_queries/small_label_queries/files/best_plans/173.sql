/*+ HashJoin(ph v pl p u b)
 HashJoin(v pl p u b)
 HashJoin(v pl p u)
 NestLoop(pl p u)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((ph ((v ((pl p) u)) b))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND pl.LinkTypeId=1 AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.UpVotes<=5;

