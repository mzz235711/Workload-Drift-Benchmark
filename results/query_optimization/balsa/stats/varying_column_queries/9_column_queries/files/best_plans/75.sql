/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2011-04-24 03:09:20'::timestamp AND p.ViewCount<=4801 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-10 22:26:15'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=23;

