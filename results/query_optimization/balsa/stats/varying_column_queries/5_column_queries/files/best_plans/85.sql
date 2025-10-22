/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-10-15 14:40:46'::timestamp AND p.CreationDate>='2010-07-19 21:15:20'::timestamp AND u.Reputation<=1713 AND u.Views<=75 AND u.UpVotes>=0;

