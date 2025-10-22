/*+ MergeJoin(u ph p)
 MergeJoin(u ph)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=7024 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND u.DownVotes<=4 AND u.CreationDate>='2011-07-11 09:46:48'::timestamp AND u.CreationDate<='2014-08-28 17:32:05'::timestamp;

