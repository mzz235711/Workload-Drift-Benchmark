/*+ MergeJoin(ph u p)
 MergeJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-11-24 14:31:38'::timestamp AND u.Reputation>=1 AND u.UpVotes>=0;

