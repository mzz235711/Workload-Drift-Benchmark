/*+ HashJoin(p u ph)
 MergeJoin(u ph)
 SeqScan(p)
 IndexScan(u)
 SeqScan(ph)
 Leading((p (u ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2011-02-02 20:50:36'::timestamp AND ph.CreationDate<='2014-08-29 04:17:00'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND u.DownVotes>=0 AND u.CreationDate<='2014-09-11 19:55:20'::timestamp;

