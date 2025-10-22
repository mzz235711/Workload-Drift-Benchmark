/*+ HashJoin(p u ph)
 MergeJoin(u ph)
 SeqScan(p)
 IndexScan(u)
 SeqScan(ph)
 Leading((p (u ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-11-30 07:01:38'::timestamp AND ph.CreationDate<='2014-07-14 16:30:14'::timestamp AND p.CommentCount>=0 AND p.CreationDate>='2010-07-20 06:28:47'::timestamp AND p.CreationDate<='2014-08-30 19:19:00'::timestamp AND u.Reputation<=262 AND u.UpVotes>=0;

