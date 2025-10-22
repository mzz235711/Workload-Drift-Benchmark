/*+ HashJoin(ph b pl p v u)
 HashJoin(b pl p v u)
 HashJoin(pl p v u)
 HashJoin(p v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((ph (b (pl (p (v u)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount=0 AND p.CreationDate<='2014-08-31 17:57:08'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1 AND v.BountyAmount>=0 AND u.Views>=0 AND u.DownVotes>=0;

