/*+ MergeJoin(ph u p)
 MergeJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate>='2010-08-13 01:10:05'::timestamp AND p.PostTypeId=1 AND p.Score<=29 AND u.Reputation>=1 AND u.Reputation<=200 AND u.DownVotes<=0 AND u.CreationDate<='2014-08-22 14:02:42'::timestamp;

