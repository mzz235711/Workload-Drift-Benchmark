/*+ HashJoin(pl p u)
 HashJoin(p u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((pl (p u))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.Score<=30 AND p.CommentCount>=0 AND p.CommentCount<=12 AND p.FavoriteCount<=11 AND p.CreationDate>='2010-07-20 12:29:17'::timestamp AND pl.CreationDate<='2014-08-24 17:04:36'::timestamp AND u.Reputation<=442 AND u.Views>=0 AND u.DownVotes<=0;

