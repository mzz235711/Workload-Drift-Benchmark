/*+ HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=2172 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate>='2011-01-30 23:25:45'::timestamp AND u.Reputation>=1 AND u.Reputation<=374 AND u.DownVotes<=2 AND u.CreationDate>='2010-07-29 13:19:38'::timestamp AND u.CreationDate<='2014-07-25 10:46:31'::timestamp;

