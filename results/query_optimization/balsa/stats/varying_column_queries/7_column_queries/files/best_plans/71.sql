/*+ MergeJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-07-19 21:35:55'::timestamp AND ph.CreationDate<='2014-07-28 18:03:27'::timestamp AND p.PostTypeId=1 AND u.Reputation<=345 AND u.DownVotes<=0 AND u.UpVotes<=21;

