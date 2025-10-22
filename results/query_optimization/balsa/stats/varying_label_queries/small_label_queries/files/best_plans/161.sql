/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-07-20 15:56:17'::timestamp AND p.ViewCount>=0 AND p.CreationDate<='2014-08-21 15:53:59'::timestamp AND u.DownVotes>=0 AND u.UpVotes<=60;

